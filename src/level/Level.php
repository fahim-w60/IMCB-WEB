<?php
namespace App\level;
use App\DBConnection;
use App\Session;
class Level
{
    private $level_nameID;
    private $level_bn_name;
    private $level_en_name;
    private $vendorID;

    public function set($data=array())
    {
        if (array_key_exists('level_bn_name', $data)) {
            $this->level_bn_name = $data['level_bn_name'];
        }
        if (array_key_exists('level_en_name', $data)) {
            $this->level_en_name = $data['level_en_name'];
        }
        if (array_key_exists('level_nameID', $data)) {
            $this->level_nameID = $data['level_nameID'];
        }
        if (array_key_exists('vendorID', $data)) {
            $this->vendorID = $data['vendorID'];
        }
    }

    public function addNew()
    {
        $sql="insert into rtl_levels (level_nameID, level_bn_name,level_en_name,vendorID) values(:level_nameID, :level_bn_name,:level_en_name,:vendorID)";
        $stmt=DBConnection::myQuery($sql);
        $stmt->bindValue(':level_nameID',$this->level_nameID);
        $stmt->bindValue(':level_bn_name',$this->level_bn_name);
        $stmt->bindValue(':level_en_name',$this->level_en_name);
        $stmt->bindValue(':vendorID',Session::get('vendorID'));
        $stmt->execute();
    }

    public function allLevels()
    {
        $sql="select * from rtl_levels where vendorID=:vendorID";
        $stmt=DBConnection::myQuery($sql);
        $stmt->bindValue(':vendorID',Session::get('vendorID'));
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function getLevel($id)
    {
        $sql="select * from rtl_levels where level_nameID=:level_nameID";
        $stmt=DBConnection::myQuery($sql);
        $stmt->bindValue(':level_nameID',$id);
        $stmt->execute();
        return $stmt->fetch(\PDO::FETCH_ASSOC);
    }

    public function levelName($id)
    {
        $default_languageID = Session::get('default_languageID');
        $sql="select * from rtl_levels where level_nameID=:level_nameID";
        $stmt=DBConnection::myQuery($sql);
        $stmt->bindValue(':level_nameID',$id);
        $stmt->execute();
        $row = $stmt->fetch(\PDO::FETCH_ASSOC);

        if ($default_languageID == 1) { // 1 =  English
            return $row['level_en_name'];
        }elseif ($default_languageID == 2){ // 2 = Bangla
            return $row['level_bn_name'];
        }else{
            return $row['level_en_name']; // Default = English
        }
    }

    public function updateLevels($id)
    {
        if ($id == $this->level_nameID){
            $sql="update rtl_levels set level_bn_name=:level_bn_name, level_en_name=:level_en_name, is_modified=:is_modified where level_nameID=:level_nameID";
            $stmt=DBConnection::myQuery($sql);
            $stmt->bindValue(':level_bn_name',$this->level_bn_name);
            $stmt->bindValue(':level_en_name',$this->level_en_name);
            $stmt->bindValue(':is_modified', 1);
            $stmt->bindValue(':level_nameID',$id);
        }else{
            $sql="update rtl_levels set level_bn_name=:level_bn_name, level_en_name=:level_en_name, level_nameID=:level_nameID,
is_modified=:is_modified where level_nameID=:id";
            $stmt=DBConnection::myQuery($sql);
            $stmt->bindValue(':level_nameID',$this->level_nameID);
            $stmt->bindValue(':level_bn_name',$this->level_bn_name);
            $stmt->bindValue(':level_en_name',$this->level_en_name);
            $stmt->bindValue(':is_modified', 1);
            $stmt->bindValue(':id',$id);
        }
        $stmt->execute();
    }

}
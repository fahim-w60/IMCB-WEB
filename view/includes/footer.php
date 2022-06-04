<!-- Footer -->
<footer class="footer container-fluid pl-30 pr-30">
    <div class="row">
        <div class="col-sm-12">
            <p><?php echo date('Y') ?> &copy; Agami Soft Ltd.</p>
        </div>
    </div>
</footer>
<!-- /Footer -->

</div>
<!-- /Main Content -->

</div>
<!-- /#wrapper -->

<!-- JavaScript -->

<!-- jQuery -->
<script src="files/bower_components/jquery/dist/jquery.min.js"></script>
<!--<script-->
<!--    src="https://code.jquery.com/jquery-2.1.4.min.js"-->
<!--    integrity="sha256-8WqyJLuWKRBVhxXIL1jBDD7SDxU936oZkCnxQbWwJVw="-->
<!--    crossorigin="anonymous"></script>-->

<!-- Bootstrap Core JavaScript -->
<script src="files/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Data table JavaScript -->
<script src="files/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="dist/js/jquery.slimscroll.js"></script>

<!-- simpleWeather JavaScript -->
<script src="files/bower_components/moment/min/moment.min.js"></script>
<script src="files/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="files/dist/js/simpleweather-data.js"></script>

<!-- Progressbar Animation JavaScript -->
<script src="files/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="files/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Sparkline JavaScript -->
<script src="files/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<!-- Owl JavaScript -->
<script src="files/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- ChartJS JavaScript -->
<script src="files/chart.js/Chart.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="files/bower_components/raphael/raphael.min.js"></script>
<script src="files/bower_components/morris.js/morris.min.js"></script>
<script src="files/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<!-- Switchery JavaScript -->
<script src="files/bower_components/switchery/dist/switchery.min.js"></script>




<!-- Select2 JavaScript -->
<script src="files/bower_components/select2/dist/js/select2.full.min.js"></script>

<!-- Form Flie Upload Data JavaScript -->
<script src="dist/js/form-file-upload-data.js"></script>

<!--dropify-->
<script src="files/bower_components/dropify/dist/js/dropify.min.js"></script>

<!-- Data table JavaScript -->
<script src="files/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="dist/js/dataTables-data.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>


<!--alertyfy-->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/alertify.min.js"></script>
<!-- Bootstrap Tagsinput JavaScript -->
<script src="files/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>


<!-- Moment JavaScript -->
<script type="text/javascript" src="files/bower_components/moment/min/moment-with-locales.min.js"></script>

<!-- Bootstrap Daterangepicker JavaScript -->
<script src="files/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Form Picker Init JavaScript -->
<script src="dist/js/form-picker-data.js"></script>

<!-- Summernote Plugin JavaScript -->
<script src="files/bower_components/summernote/dist/summernote.min.js"></script>

<!-- Summernote Wysuhtml5 Init JavaScript -->
<script src="dist/js/summernote-data.js"></script>

<!-- Bootstrap Touchspin JavaScript -->
<script src="files/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

<!-- Form Advance Init JavaScript -->
<script src="dist/js/form-advance-data.js"></script>

<!-- Integration JS --->

<script src="dist/js/visit-plan.js"></script>

<!-- Noty CSS and JS -->
<link rel="stylesheet" href="dist/css/noty.css">
<script src="dist/js/noty.min.js"></script>

<!-- Tinymce JavaScript -->
<script src="vendors/bower_components/tinymce/tinymce.min.js"></script>
<!-- Tinymce Wysuhtml5 Init JavaScript -->
<script src="dist/js/tinymce-data.js"></script>

<!-- Calender JavaScripts -->
<script src="vendors/bower_components/moment/min/moment.min.js"></script>
<script src="vendors/jquery-ui.min.js"></script>
<script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="dist/js/fullcalendar-data.js"></script>


<script src="vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>


<script>
    $("#dataTable").DataTable();
</script>
<!-- Integration JS --->












<!-- Init JavaScript -->
<script src="dist/js/init.js"></script>

<script>
    alertify.set('notifier', 'position', 'top-center');
</script>
<audio id="audio" src="http://www.soundjay.com/button/beep-07.wav"></audio>
<script>
    function playSound() {
        var sound = document.getElementById("audio");
        sound.play();
    }
    $(document).ready(function() {
        $('#datatable').DataTable({
            language: {
                searchPlaceholder: "Search data"
            }
        })
    })

    $('.alert').delay(5000).fadeOut(1000, function() {
        $(this).alert('close');
    });
</script>
</body>
<!--Agami Soft 2018-->

</html>
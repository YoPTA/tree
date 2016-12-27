<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>

    <title>Tree</title>
</head>
<body>
<style>
    #tree1 li{
        list-style-type: none;
    }
</style>
<h3>Редактор</h3>
<div class="container" style="margin-top:30px;">
    <textarea name="editor1" style="width: 200px;">&lt;p&gt;Initial value.&lt;/p&gt;</textarea>
    <script type="text/javascript">
        CKEDITOR.replace( 'editor1' );
    </script>
</div>

<script src="../../template/js/treeView.js"></script>
</body>
</html>
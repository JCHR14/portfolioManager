<h1>
Gestión de colaboradores
</h1>
<div class="row depth-1 m-padding">
<form action="index.php?page=colaboradores" method="post" class="col-md-8 col-offset-2">
</div>
<div class="row depth-1">
<table class="col-md-12">
  <thead>
    <tr>
      <th class="">Correo</th>
      <th class="">Nombre</th>
      <th class="">Rol</th>
      <th class="">Añadir</th>
    </tr>
  </thead>
  <tbody class="zebra">
    {{foreach usuarios}}
    <tr class="">
      <td class="">{{usuarioemail}}</td>
      <td class="">{{usuarionom}}</td>
      <td class="">
        <span class="select col-sm-12"><select class="col-md-12" id="cmbRol" name="cmbRol">
          {{foreach rolUsuarios}}
        <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor rolUsuarios}}
    </select> </span>
      </td>
      <td class="center">
        
          <label for="gg"></label>
          <input type="hidden" name="gg" value="{{usuariocod}}" id="{{usuariocod}}"  />
          <button id="{{usuariocod}}" class="btn depth-1 s-margin" name="gg" value="{{usuariocod}}">
          <span class="ion-plus-circled"></span>
          </button>

      </td>
    </tr>
    {{endfor usuarios}}
  </form>
  </tbody>
</table>
</div>
{{foreach usuarios}}
<script>
  $().ready(
  function(){
    $("#{{usuariocod}}").click(function(e){
      e.preventDefault();
      e.stopPropagation();
      document.forms[0].submit();
      });
  }
  );
</script>
{{endfor usuarios}}

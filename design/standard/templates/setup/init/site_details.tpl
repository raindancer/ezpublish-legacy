{*?template charset=latin1?*}
{include uri='design:setup/setup_header.tpl' setup=$setup}

<form method="post" action="{$script}">

  <div align="center">
    <h1>{"Site details"|i18n("design/standard/setup/init")}</h1>
  </div>

  <p>
    {"You need to specify some information about every site you've installed."|i18n("design/standard/setup/init")}
  </p>

  <p>
  <table border="0" cellspacing="0" cellpadding="0">
    
    <tr>
    {section name=SiteTemplate loop=$site_templates}

      <td class="setup_site_templates">
        <div align="top">
          <img src={concat( "/design/standard/images/setup/", $:item.image_file_name )|ezroot}>
        </div>
        <div align="bottom">

	  <table border="0" cellspacing="0" cellpadding="0">
            <tr>
	      <td>{"Title"|i18n("design/standard/setup/init")}: </td>
	      <td><input type="text" size="20" name="eZSetup_site_templates_{$:index}_title" value="{$:item.name|wash}" /></td>
	    </tr>
	    <tr>
	      <td>{"URL"|i18n("design/standard/setup/init")}: </td>
	      <td><input type="text" size="20" name="eZSetup_site_templates_{$:index}_url" value="http://" /></td>
	    </tr>
	    <tr>
	      <td>{"Admin e-mail"|i18n("design/standard/setup/init")}: </td>
	      <td><input type="text" size="20" name="eZSetup_site_templates_{$:index}_email" value="admin@localhost" /></td>
	    </tr>
	    <tr>
	      <td>{"Site access"|i18n("design/standard/setup/init")} {$:item.access_type|wash}: </td>
	      <td><input type="text" size="20" name="eZSetup_site_templates_{$:index}_value" value="{$:item.access_type|wash}" /></td>
	    </tr>
	  </table>

        </div>
      </td>

      {section show=eq( mod( $:index, 2 ), 1 )}
        </tr>
        <tr>
      {/section}

    {/section}
    </tr>

  </table>      
  </p>

  {include uri="design:setup/init/steps.tpl"}
  {include uri="design:setup/persistence.tpl"}

  <div class="buttonblock">
      <input class="defaultbutton" type="submit" name="StepButton" value="&gt;&gt;" />
  </div>


</form>

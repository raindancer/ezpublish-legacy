{*?template charset=latin1?*}
{include uri='design:setup/setup_header.tpl' setup=$setup}

<form method="post" action="{$script}">

  <div align="center">
    <h1>{"Site access configuration"|i18n("design/standard/setup/init")}</h1>
  </div>

  <p>
    {"There three main ways of accessing and identifying an eZ publish site. You need to chose which access method you would like to use for your site(s)."|i18n("design/standard/setup/init")}
  </p>

  <p>
    <table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>
          <input type="radio" name="eZSetup_site_access" value="url" checked>{"URL"|i18n("design/standard/setup/init")}</input>
        </td>
      </tr>
      <tr>
        <td>
          <input type="radio" name="eZSetup_site_access" value="port">{"Port"|i18n("design/standard/setup/init")}</input>
        </td>
      </tr>
      <tr>
        <td>
          <input type="radio" name="eZSetup_site_access" value="hostname">{"Hostname. Note: Requires DNS setup."|i18n("design/standard/setup/init")}</input>
        </td>
      </tr>
    </table>
  </p>

  {include uri="design:setup/init/steps.tpl"}
  {include uri="design:setup/persistence.tpl"}

  <div class="buttonblock">
      <input class="defaultbutton" type="submit" name="StepButton" value="&gt;&gt;" />
  </div>


</form>

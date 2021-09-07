


<div style="font-family: Arial, Verdana, sans-serif; font-size: 14px;">
<p>
      % if object.partner_id.gender == 'male':
      Sehr geehrter Herr
      % elif object.partner_id.gender == 'female':
      Sehr geehrte Frau
      % elif object.partner_id.gender == 'other' or '':
      Hallo
      % endif
      ${object.partner_id.title_web or ''} ${object.partner_id.firstname or ''} ${object.partner_id.lastname or ''},
      </p>
    dank Ihrer Unterstützung sind wir in der Lage unsere hohen Tierschutzstandards aufrechtzuerhalten.<br>
    So können wir uns um alle Tiere des Tierschutzhofs PFOTENHILFE professionell kümmern.
    <p></p>
    <br><span style="font-weight: bold;">Ihre Angaben:
    </span><p style="padding-left: 14px;">

Nummer: <strong>${object.name}</strong><br>
% for line in object.order_line:
Spendenzweck: ${line.product_id.name or ''}<br>
Spendenintervall: ${line.payment_interval_name or ''}<br>
% endfor
Summe: ${object.amount_total}&nbsp;${object.pricelist_id.currency_id.name}<br>

<br><span style="font-weight: bold;">Ihre Daten:
</span></p><p style="padding-left: 14px;">
% if object.partner_id.gender == 'male'
Herr
% elif object.partner_id.gender == 'female'
Frau
% elif object.partner_id.gender == 'other' or ''
''
% endif
${object.partner_id.titel_web or ''} ${object.partner_id.firstname or ''} ${object.partner_id.lastname or ''}<br>
${object.partner_id.street or ''} ${object.partner_id.street_number_web or ''}<br>
${object.partner_id.zip or ''} ${object.partner_id.city or ''}<br><br>
% if object.payment_tx_id:
        Datum: ${format_tz(object.payment_tx_id.date_create, tz='Europe/Vienna', format='%Y-%m-%d %H:%M')}<br>
% endif
        Fortschritt: <strong style="text-transform:uppercase;">
% if object.payment_tx_id.state == 'cancel':
      abgebrochen
% elif object.payment_tx_id.state == 'draft' or '' or 'pending':
      in Bearbeitung
% endif
</strong>
    </p>
   <p><br>Bleiben Sie informiert, und lesen Sie die News aus der PFOTENHILFE auf <a href="https://www.facebook.com/Pfotenhilfe.Lochen"> Facebook.</a>
          <br>Im Namen aller unserer Schützlinge danken wir Ihnen nochmals für Ihre Spende und das in uns gesetzte Vertrauen!
          <br><br>Herzliche Grüße <br><br>Ihr PFOTENHILFE-Team
   </p>

    <p>Sollten Sie Fragen haben, kontaktieren Sie bitte:&nbsp;</p>
    <h3>
        <strong>${object.company_id.name}</strong>
    </h3>
    <p>
        % if object.company_id.street:
            ${object.company_id.street}<br>
        % endif
        % if object.company_id.city or object.company_id.zip:
            ${object.company_id.zip} ${object.company_id.city}<br>
        % endif
        % if object.company_id.country_id:
            ${object.company_id.state_id and ('%s, ' % object.company_id.state_id.name) or ''} ${object.company_id.country_id.name or ''}<br>
        % endif
        % if object.company_id.phone:
            Tel.:&nbsp;${object.company_id.phone}<br>
        % endif
        % if object.company_id.email:
            E-Mail.:&nbsp;<a href="mailto:${object.company_id.email}">${object.company_id.email}</a><br>
        % endif
        % if object.company_id.website:
            Web.:&nbsp;<a href="${object.company_id.website}">${object.company_id.website}</a><br>
        % endif
        % if object.company_id.logo:
</p><div style="padding:0; margin:0;"><img src="http://www.pfotenhilfe.org/logo" style="width: 120px;"></div>
        % endif
    <p></p>

</div>
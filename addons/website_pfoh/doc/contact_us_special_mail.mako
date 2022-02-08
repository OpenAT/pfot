


<div style="font-family: Arial, Verdana, sans-serif; font-size: 14px;">
    <br />
    <h2>
        ${object.name}
    </h2>
    <p>
        ${object.description}
        <br />
        <br />
    </p>
    <h3>
        Kontaktdaten:
    </h3>
    <p style="padding-left: 14px;">
        <strong>Name:</strong> ${object.contact_name}<br />
        <strong>E-Mail:</strong> ${object.email_from}<br />
        <strong>Tel.:</strong> ${object.phone}<br />
        % if object.partner_name:
        <strong>Firma:</strong> ${object.partner_name}<br />
        % endif
        % if object.street:
        <strong>Straße:</strong> ${object.street}<br />
        % endif
        % if object.city:
        <strong>Stadt:</strong> ${object.city}<br />
        % endif
        % if object.zip:
        <strong>PLZ.:</strong> ${object.zip}<br />
        % endif
        % if object.country_id:
        <strong>Land:</strong> ${object.country_id.name}<br />
        % endif
        <strong>Webseitensprache:</strong> ${object.env.context.get('lang', '')}<br />
    </p>
</div>



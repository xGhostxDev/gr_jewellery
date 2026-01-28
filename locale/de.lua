local Translations = {
    error = {
        fingerprints = 'Du hast einen Fingerabdruck hinterlassen..',
        security_active = 'Das Sicherheitssystem ist aktiv..',
        minimum_police = 'Mindestens %{value} Polizei benötigt',
        vitrine_hit = 'Diese Vitrine wurde bereits getroffen',
        wrong_weapon = 'Deine Waffe ist nicht stark genug..',
        to_much = 'Deine Taschen sind voll..',
        fail_therm = 'Du hast das Thermit nicht richtig aufgetragen.',
        wrong_item = 'Sie haben nicht den richtigen Artikel..',
        too_far = 'Du bist zu weit weg..',
        stores_open = 'Ich sollte es versuchen, nachdem der Laden schließt.',
        fail_hack = 'Sie haben es nicht geschafft, das Sicherheitssystem zu hacken.',
        skill_fail = 'Ihr %{value} Skill ist nicht hoch genug..'
    },
    success = {
        thermite = 'Du hast das Thermit richtig aufgetragen.',
        store_hit_threestore = 'Sicherungen durchgebrannt, die Türen sollten sich bald öffnen..',
        store_hit_onestore = 'Sicherungen durchgebrannt, die Türen sollten sich für %{value} Minuten öffnen',
        hacked_threestore = 'Hack erfolgreich, alle Türen sollten offen sein..',
        hacked_onestore = 'Hack erfolgreich, Sicherheit ist deaktiviert'
    },
    info = {
        smashing_progress = 'Zerschlagen der Vitrine',
        hacking_attempt = 'Verbinden mit dem Sicherheitssystem..',
        one_store_warning = 'Sich beeilen! Das Geschäft schließt in %{value} Minute'
    },
    general = {
        target_label = 'Zerschmettere die Vitrine',
        drawtextui_grab = '[E] Zerschmettere die Vitrine',
        drawtextui_broken = 'Vitrine ist kaputt'
    }
}

-- Simple locale system
Lang = Lang or {}
Lang.Locale = 'de'

function Lang:t(str, args)
    local keys = {}
    for key in string.gmatch(str, '([^.]+)') do
        table.insert(keys, key)
    end
    
    local value = Translations
    for _, key in ipairs(keys) do
        value = value[key]
        if not value then
            return str
        end
    end
    
    if type(value) == 'string' and args then
        for k, v in pairs(args) do
            value = value:gsub('%%{' .. k .. '}', tostring(v))
        end
    end
    
    return value
end
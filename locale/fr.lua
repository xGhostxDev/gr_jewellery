local Translations = {
    error = {
        fingerprints    = 'Vous avez laissé une empreinte digitale...',
        security_active = 'Le système de sécurité est actif..',
        minimum_police  = 'Minimum de %{value} police nécessaire',
        vitrine_hit     = 'Cette vitrine a déjà été touchée',
        wrong_weapon    = 'Votre arme n\'est pas assez puissante...',
        to_much         = 'Vos poches sont pleines..',
        fail_therm      = 'Vous n\'avez pas appliqué la thermite correctement..',
        wrong_item      = 'Vous n\'avez pas le bon article..',
        too_far         = 'Tu es trop loin..',
        stores_open     = 'Je devrais essayer après la fermeture du magasin..',
        fail_hack       = 'Vous n\'avez pas réussi à pirater le système de sécurité.',
        skill_fail      = 'Votre compétence %{value} n\'est pas assez élevée..'
    },
    success = {
        thermite             = 'Vous avez appliqué la thermite correctement..',
        store_hit_threestore = 'Fusibles grillés, les portes devraient bientôt s\'ouvrir..',
        store_hit_onestore   = 'Fusibles grillés, les portes devraient s\'ouvrir pendant %{value} minutes',
        hacked_threestore    = 'Hack réussi, toutes les portes doivent être ouvertes..',
        hacked_onestore      = 'Hack réussi, la sécurité est désactivée'
    },
    info = {
        smashing_progress = 'Briser la vitrine',
        hacking_attempt = 'Connexion au système de sécurité..',
        one_store_warning = 'Hâte! Le magasin fermera dans %{value} minute'
    },
    general = {
        target_label = 'Briser la vitrine',
        drawtextui_grab = '[E] Casser la vitrine',
        drawtextui_broken = 'La vitrine est cassée'
    }
}

-- Simple locale system
Lang = Lang or {}
Lang.Locale = 'fr'

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
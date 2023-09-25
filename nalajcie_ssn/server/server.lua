RegisterNetEvent('esx:playerLoaded', function(player, xPlayer, isNew)
    if not isNew then return end

    local playerSSN = MySQL.prepare.await('SELECT `ssn` FROM `users` WHERE `identifier` = ?', { xPlayer.identifier })
    if not playerSSN then
        local newSSN = tostring(os.time())
        MySQL.update('UPDATE `users` SET `ssn` = ? WHERE `identifier` = ?', {
            newSSN:sub(3), xPlayer.identifier
        }, function(affectedRows)
            if affectedRows then
                print(('[^NaLajcie.pl - System SSN^7]: ^5Pomyślnie zaktualizowano numer SSN: %s dla nowego gracza o imieniu i nazwisku: %s'):format(newSSN, xPlayer.name))
            end
        end)
    end
end)
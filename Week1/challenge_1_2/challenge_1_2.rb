List_ofAnimals_j__ = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9,
12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]


def addemup_NOW(tLwN)
    temporaryValueThatIWillBeReturningRightAfterImDoneWithThisMethod = 0
    tLwN.each do |letters| 
        temporaryValueThatIWillBeReturningRightAfterImDoneWithThisMethod += letters
    end
    return temporaryValueThatIWillBeReturningRightAfterImDoneWithThisMethod
end

def doSomethingNotSure?(grr)
    ad = addemup_NOW(grr).to_f
    k = ad / grr.length()
    return k
end

def NotevenNums(da)
    guifsogfj = 0
    da.each do |average|
        if average % 2 == 1
            guifsogfj += 1
        end
    end
    return guifsogfj
end

def fileTaxes(parameter1)
    owed = 0
    for hdxcklekrbuugy in parameter1 do
        if parameter1[hdxcklekrbuugy] % 2 == 1 and parameter1[hdxcklekrbuugy - 1] % 2 == 1
            owed += 1
        end
    end
    return owed
end

def h(horse)
    return addemup_NOW(horse) + doSomethingNotSure?(horse) + NotevenNums(horse) + fileTaxes(horse)
end


puts h(List_ofAnimals_j__)
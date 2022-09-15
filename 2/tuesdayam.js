const createPhoneNumber = arr => {
    let part1 = arr.splice(0,3).join('')
    let part2 = arr.splice(0,3).join('')
    return string = `(${part1}) ${part2}-${arr.join('')}`
}

console.log(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))

// thank u bek
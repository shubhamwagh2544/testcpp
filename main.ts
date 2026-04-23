const response = [{ id: 1 }];
const newList = structuredClone(response);
newList.forEach((rec) => (rec.id = 100));
console.log(newList);
console.log(response);

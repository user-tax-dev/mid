export default (stream) => {
  var li;
  li = [];
  return new Promise((resolve, reject) => {
    stream.on('data', (chunk) => {
      li.push(chunk);
    }).on('end', () => {
      return resolve(Buffer.concat(li));
    }).on('error', reject);
  });
};

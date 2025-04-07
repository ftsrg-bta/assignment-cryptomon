import { buildModule } from '@nomicfoundation/hardhat-ignition/modules'

const CryptomonModule = buildModule('CryptomonModule', (m) => {
  const cryptomon = m.contract('Cryptomon')
  return { cryptomon }
})

export default CryptomonModule

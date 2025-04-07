import { expect } from 'chai'
import hre from 'hardhat'
import { ContractFactory } from 'ethers'
import { Cryptomon } from '../typechain-types'

describe('Cryptomon', function () {
  describe('Deployment', function () {
    it('Should set correct owner', async function () {
      const [owner] = await hre.ethers.getSigners()
      const factory: ContractFactory = await hre.ethers.getContractFactory('Cryptomon')
      const cryptomon: Cryptomon = await factory.deploy(owner)
      expect(await cryptomon.owner()).to.equal(owner)
    })
  })
})

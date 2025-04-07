// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Cryptomon Interface
 * @author FTSRG
 * @notice This interface defines the functions for the Cryptomon game.
 * @dev Please do not modify this interface!
 */
interface ICryptomon is IERC721 {

    struct Monster {
        string name;
        uint256 level;
        uint256 xp;
        uint256 evolutionStage;
    }

    struct Battle {
        uint256 monster1Id;
        uint256 monster2Id;
        address winner;
    }

    struct Tournament {
        uint256 maxParticipants;
        uint256 levelLimit;
        uint256[] participants;
    }


    // ============================
    //        MONSTER LOGIC
    // ============================

    /**
     * @notice Create a new monster with the given name.
     * @param name The name of the new monster.
     * @return monsterId The ID of the newly created monster.
     */
    function createMonster(string calldata name)
        external returns (uint256);

    /**
     * @notice Get information about a monster.
     * @param monsterId The ID of the monster.
     * @return Monster The monster's details.
     */
    function getMonster(uint256 monsterId)
        external view returns (Monster memory);

     // ============================
    //        BATTLE LOGIC
    // ============================

    /**
     * @notice Challenge another player's monster to a battle.
     * @param myMonsterId The challenger's monster ID.
     * @param opponentMonsterId The ID of the opponent's monster.
     * @return battleId The ID of the created battle.
     */
    function challengeMonster(
        uint256 myMonsterId,
        uint256 opponentMonsterId
    ) external returns (uint256);

    /**
     * @notice Accept a battle challenge.
     * @param battleId The ID of the battle to accept.
     */
    function acceptChallenge(uint256 battleId) external;

    /**
     * @notice Use a move in an ongoing battle.
     * @param battleId The ID of the battle.
     * @param moveId The ID/index of the move to use.
     */
    function useMove(uint256 battleId, uint256 moveId) external;
    
    /**
     * @notice Claim the reward after winning a battle.
     * @param monsterId The ID of the monster that participated.
     */
    function claimBattleReward(uint256 monsterId) external;

    /**
     * @notice Get the list of move names available for a monster.
     * @param monsterId The monster ID.
     * @return movesList An array of move names.
     */
    function moves(uint256 monsterId)
        external view returns (string[] memory);

    // ============================
    //     TOURNAMENT LOGIC
    // ============================

    /**
     * @notice Create a new tournament with given settings.
     * @param maxParticipants Maximum number of participants (must be power of 2, min 4).
     * @param levelLimit Optional level restriction.
     * @return tournamentId The ID of the newly created tournament.
     */
    function createTournament(
        uint256 maxParticipants,
        uint256 levelLimit
    ) external returns (uint256);

    /**
     * @notice Join a tournament with a monster.
     * @param tournamentId The tournament ID.
     * @param monsterId The monster to register.
     */
    function joinTournament(
        uint256 tournamentId,
        uint256 monsterId
    ) external;

    /**
     * @notice Execute the next round of a tournament.
     * @param tournamentId The ID of the tournament.
     */
    function executeTournamentRound(uint256 tournamentId)
        external;

    /**
     * @notice Claim the prize after winning the tournament.
     * @param tournamentId The ID of the tournament.
     * @param monsterId The winner monster ID.
     */
    function claimTournamentPrize(
        uint256 tournamentId,
        uint256 monsterId
    ) external;
}

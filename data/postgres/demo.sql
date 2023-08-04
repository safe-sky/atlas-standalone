--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: atlas; Type: SCHEMA; Schema: -; Owner: atlas
--

CREATE SCHEMA atlas;


ALTER SCHEMA atlas OWNER TO atlas;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: atlas; Type: TABLE; Schema: atlas; Owner: atlas
--

CREATE TABLE atlas.atlas (
    key text NOT NULL,
    val bytea NOT NULL,
    created timestamp without time zone DEFAULT clock_timestamp() NOT NULL,
    updated timestamp without time zone DEFAULT clock_timestamp() NOT NULL,
    expires timestamp without time zone,
    hash character varying(64)
);


ALTER TABLE atlas.atlas OWNER TO atlas;

--
-- Data for Name: atlas; Type: TABLE DATA; Schema: atlas; Owner: atlas
--

COPY atlas.atlas (key, val, created, updated, expires, hash) FROM stdin;
conf/DEMO/aero	\\x1d170000fb2d0a0444454d4f12034d4d581a1b0a0531372d333510f015182d2201592201412201422201432201441a120a0531312d3239109f06181222014522014623006222014822014a1b00fb732a014e2a01532a0248412a0248422a024a412a024a422a015742fc2c0a280a1209fee2726870c64b401142f32b8627c32a4012120948c88cb06ec24b4011b2dc96cec1b62a40123a0a03525759120731312d32392d411a2a0a120982734694f6c24b4011169051f932b82a400a1209ceca51dbe1c24b40116a447a9b48ba2a4010013c003f421a2a280001ff030a12091a225d22cdc24b4011bef8a23d5ebc3c00003f431a2a280001fa030a120966796869b8c24b401112adcbdf73be3c0043372d3335b400fa14e03197af26c64b401110f1c5cd5fbf2a400a1209d58199dc15c54b4011a305c31440c0b40043372d3335b4000d2800ff030a1209cad19b0905c44b4011361ac05b20c178000002b4000d2800f23a0a1209bf219e36f4c24b4011c92ebda200c22a40100112c1010a035457591201411ab6010a12093f69f2de62c54b40111ed48f977fbe2a400a1209622530e763c54b401190018f5ec31400e2ddd8470268c54b40115b75c2f0b6d800e2835f347568c54b4011e39d8da6c41400e2b253628d69c54b4011dfca6d56d81400e2c32ee5d76ac54b40113ef08c11e41400e251f701486dc54b4011d98fb9d7ee1400e2a3795b446fc54b40116638f988f31400f307c0b4a84f72c54b4011b9ee9c1cf4bf2a401001129007c4001242c400e2d514b7c0d4c34b4011f344c659c73800e2e7fba9f1d2c34b401132f499fdcb1400e27defca89d1c34b4011a6f8aef7d11400e272193735d0c34b4011c626439fd91400e284b872f6cec34b4011c71b4fbae31400d3256eba0acec34b40114bef7618b000e24f351f7ccdc34b4011fdca3967fa2800f2906d20b825cdc34b40115c38109205c02a400a12094a78e7f5ccc34b4011935a83520fc02a4010011ade010a1209c52bff10d1c34b4011384888f205c12a400a12090cf26904d1c34b4011d7ace93015c12a400a1209240626dcd0c34b401121fe06921cc12a400a120972474959d0c34b4011949a875d25c12a400a120960240f9fcfc34b4011e3a8dc442dc12a400a1209d82c978dcec34b4011258d7681371400e297299c93cdc34b40110f8ea3833f1400e21a6a1492ccc34b401111eb43cd461400e292a0aea4cbc34b4011b0a250604b1400e20fae2589cac34b4011730866964e1400f219cff2e1fec8c34b40113b736ac251c12a4010011aca010a1209ad8acb4cc4c34b401193814de7d4bf9602d223cf9ac4c34b40116f63b323d53601e25f8b27ccc5c34b40115677d1fcd61400e27cccac4ac7c34b4011e367c81ddb1400e387a2409fc8c34b4011c3c6ab62e01400d240e4e3c9c34b401196438b6ce71400e2d4a9e111cbc34b40117fb4498ff01400e24a647a1dccc34b401120c9f66bfc1400ef085b47b0ccc34b401156eb692c06ae01071f3ec60101f2020a120956b0d705cdc34b40113d8cfff11440000dd5010fee0109e2c4b5357dd1c34b4011b65e78ca0f4e01e24d237722d2c34b40115e98f15b191400e24732f504d3c34b4011e2fb8799221400e2ab819ce6d3c34b4011ea1560692a1400e2fe1d9b2ed5c34b40114bebcac2321400e2fdbb3e73d6c34b40110127254e381400e2cd8d8e50d8c34b40115ea7ec4f3d1400d3ba7889fbd9c34b40114b7842af1602e2b9a063acdbc34b40119829f74c402800e2ac1a84b9ddc34b401103f456b840930423f5029303f21a431aea020a1209b4812a244fc54b4011045372f332bb2a400a12090de198654fc54b40114367e3d2421400e24264ecdf50c54b4011a3bfe14f9e1400e230b1434651c54b4011027278f7b61400e277e73f5a52c54b401199ddee40f81400f21305b6943d53c54b4011a700bd152ebc2a400a120911a6cddd53c54b40112e1b9df3531400e26f7abc3555c54b4011468a123ea51400e22ee7525c55c54b401130fbd060ae1400f213b0bf362c57c54b4011153ce0151cbd2a400a120968df26ed57c54b401151723dc0491400e2c771964858c54b401199e83ddf601400e28b112e8958c54b401131b84148711400e22b4b749659c54b40115b199ea8b61400e264dbb3f85ec54b4011295fd042025b05e2fe6b2f5860c54b4011b9c15087151400e263bbd63961c54b401144d72a662914000dab0553100112ae047801f206441afe020a1209680ea4e606c54b4011c898bb96902801e2c039c89008c54b4011009b62c4f41400e21ef4119d0ac54b40114cb6cbc86a0001e2000341800cc54b40115d5727c2e11400e2ff863f790ec54b4011e514788258c400e2e025dd3b0fc54b4011c1429c3d861400e2229fa1c90fc54b401157a71485a71400e2396ba63110c54b4011dfecc506c11400e2a407f47810c54b4011dc398375d21400e280fdc68d11c54b4011bf7e880d16ec00e2c1d2af6312c54b4011e5b512ba4b1400e29db415a012c54b4011902452e45a1400e24fcf166b13c54b4011ebc9fca36f1400e219e42ec214c54b401109ade2e8851400e21e3f0a8d16c54b4011fbc7e7ba951400e2645529e219c54b4011c22ff5f3a61400e2ebfeb1101dc54b4011d5eb1681b11400e23748d27f20c54b4011263a26e6b41400ff07a0aa9dbc23c54b401121c5a5cfb3be2a4010011aa201a50004e232a2fec412c54b4011d7529b93724100e2c11a67d311c54b40117db1f7e28b1400e20486f6fb0fc54b401119fe7854a11400e2c3b645990dc54b4011750bb842b31400e2ad94545c0bc54b401127e77a91bf1400e2f0eb76ac08c54b401105dec9a7c71400e21b2fdd2406c54b4011dfc72cd6cbb40814aa3c0712453102e2f899c46a3dc34b4011fb58c16f43c204d35ec1919b3cc34b40113d9006011400e2ff48c78b3bc34b4011a3e5e555422800e2caabcec53ac34b40115c81d71d411400e248b945aa39c34b401121b715b13e1400e23668f9cb38c34b4011ed39faa93b1400e25aa038db37c34b4011de6ae745371400e243780f2b37c34b4011c291f6f5321400e2b5d7cc6b36c34b40112422a1d22d1400e29dddb5df35c34b4011f1c4628a281400eb4acbed0335c34b4011fb71a02c21140052314c5c7d2b1400d3d324c2d034c34b40113af6a22c6400e2b04edf7c34c34b40116c0b2a05382800e2aa91a7f633c34b4011c9433a973d1400d35de0f25833c34b4011aeefc3410401e2874b338232c34b4011419df2e8462800e24ca94bc631c34b401192a34ade4a1400e2e16e5a3a30c34b401136d0d7875004082f9e04b90004d33980d99832c34b401180a955aa5908e22e347cb031c34b40116273c410efbf06e28e2848c730c34b401137cbc05ce61400e21d177a692fc34b401171c0536ddc1400e278f2e9b12dc34b401176887fd8d21400e201ae1a3a2cc34b4011c1dc932ccc1400d34f519a722ac34b40115952ee3e4909e24a24d1cb28c34b40115b4af14cc32800e2751f80d426c34b4011fda94c8cc01400d34617e5e324c34b40115cb2857b1400e23684190923c34b40113e096ccec12800e20e1fc7c507c34b4011df5adc35d71400d31cc5837703c34b40112de4b622ff07e2a7e8482effc24b401107d90d36d02800e29dd66d50fbc24b401183bd2e68c61400e2b2593f47f5c24b4011f90fe9b7af1400e28063cf9ecbc24b4011b320393eff0d03e2b8d0f0c1c6c24b40117694394cea1400e2c5cc9948c4c24b4011befb3e77dd1400e279211d1ec2c24b4011c046edd9ce1400e2c4190d2abbc24b4011fdbfeac8911400d365451ed2b9c24b4011d9cc21a96604e295117239b9c24b40116cedd8637d2800e2602cc203b9c24b4011893952c7741400e20d2e6700b9c24b401175159c0b6d1400e242131736b9c24b401152faf83a5fad0314d5ad0bf412461aca010a12091d4eaac7c7c24b40112aa105b2e8b72a400a1209eab12d03cec2210b021400e2b308c556d0c24b40118d8b59e5f81400e21454f943d8c24b4011c16d1228074d0de2e7076465eac24b40117918ffe3291400e20e6f319af0c24b40111428bdca351400e2c6a28e33f2c24b401129dce1653c1400e224a58faff3c24b401146820420491400e2ad12d154f4c24b40112c239ae5571400f307d6bf907af4c24b4011ac962a0769b82a40100112d903b606f206481ace030a12097b6583f178c44b4011acfb6c8901c401e24fb747ca71c44b40115e00d017312401e2ea53331070c44b401160f4cb16ff3e06e2c41a78ff69c44b40119696917a4f1400e2547f733568c44b40114b6947bb1b1400e28a986d0267c44b4011041e1840f8de06e25dca541c62c44b401122bb1cc06c1400e28102942b61c44b4011c9d3a8763c1400e228a325ea60c44b401142d6ae64221400e2a596f78260c44b40111527adaef95607e20aa41f6860c44b4011fc36c478cd1400e26a7e463360c44b401157e652019c1400e2a612f9895ec44b401119dfbcdd371400f21330a017ee5cc44b4011184740e0dcba2a400a1209b350210d5dc44b4011f40bc050d11400e2fa580bfd5dc44b401122d797b6c91400e2ed629ae95ec44b4011ca3be2ebc61400e25dbf60376cc44b401129df7d9fbb1400e22c60a7fd7bc44b4011718e3a3aae1400e22f4db62682c44b40118c2a68ffa81400e2cb54771b8ac44b4011e3885a3fa21400e2c507d1b58ac44b401130ca7dbca11400e21c55979d8fc44b4011a9de75919d8d0f238609dc01f206591a92030a1209fdc2860211c64b4011d20b2da171dc01e21776622019c64b4011c674d7c8641400e245926ae91bc64b4011de6badd4581400e2cc3bf3171fc64b4011784c9308431400e2b47d231521c64b401114950d6b2a1400e2669824e021c64b4011044477ff0e1400e20d0ba47a21c64b4011604dafdef24002e26da34b4920c64b401150fc1873d71400e28000080e1ec64b40117a9d1e25c01400e2da3dd4111bc64b4011290a4f43af1400d3951348e416c64b40112b0d46369d07e288d459d2f6c54b401185b8cdaf412800e222a413aeecc54b40114bb43fab271400e29763682be5c54b401108f87f1f1f1400e2293c6876ddc54b401122043f051b1400e268e2c226d7c54b40114f5c8e57201400e2a26deb5d72c54b401124045031731400d36d46bc2b71c54b4011e88942265404e20a3197546dc54b401116026f377728000f320a003f1ae605190001f2020a1209f70fd88b57c54b4011e426b4f6884100e2ac84382053c54b4011b853df9e8c14000dfb08f3010a1209d86a6a3414c54b40112c5cfba745010d7e08f2020a120907b7b585e7c44b40116da23b2de42800e21932c3eb9fc44b4011c6ee4cb21fbd01e26f360cd583c44b40119d95fe6f361400e2804a95287bc44b40112219726c3d1400e20e58288870c44b4011d6a48059461400e28c20dfef61c44b40118e85329e5214000f221001e232c687d9cbc34b4011ea9788b7ce28000fb00e01d38c95e2f43fc34b401138633d5ae6080f360901e28ee9094b3cc34b40118fb63bb544f607e2fccb498336c34b40116958e7734914000d0a08f2020a120918d00b772ec34b4011e76ed74b532800e2320add802ac34b4011de0951195a1400e2009f69d322c34b40114a2e5adb6f1400e2460e6cf019c34b40114e226706961400e211514cde00c34b40117bd976da1ab70de213776110fdc24b4011b8ad2d3c2f1400d36e5809ccf9c24b4011c7516ffcf30de2c9d754ccf7c24b40115f494d16522800e26aa7412cf6c24b4011aacc391d6d1400e259e02bbaf5c24b401163a2f77c831400e25f132dd4f5c24b4011a7b8605fa11400e270eeaf1ef7c24b401117ea5509bb1400e2457d3782f9c24b4011e9633e20d01400e290c657f1fcc24b40110f441669e21400e24e5bc8c8fec24b401118ee5c18e91400e22f7e648401c34b40110e89d6e5ef1400e215fcdb0a06c34b4011d27e5afbf1930ef20f99010a0341505212014e1a8e010a1209ab7015d56cc54b401174379902e3c104e2b5a9ba4736c54b40118ddfcac80f8905e21a6437d840c54b4011023d1e447c3d06e25f52c6095dc54b4011d84f5a13661400e213d55b035bc54b40115f4f2ad0dd1506e247a6e8ed74c54b4011b7f8ca72c814000d780053100212e1029c00f206531ad6020a120926be7f9829c54b40117616629a8e6000e21f2b9db415c54b4011d38b35b79d1400e202d6aa5d13c54b401133ee17fdb21400e2797cd69013c54b40117d3f355eba1400e2bef90d130dc54b4011f1434a58c01400e2abd09be50dc54b4011b832f2c3527c03e26c6bfaa2f3c44b4011e2676d64681400e286ed821cefc44b4011521b8b5c263c00e22bb0b618f2c44b40117cce82f5241400e26e07d968efc44b40114e3b46c373ec00e213ca0c65f2c44b401131783d3d5b1400e2fcbb8800f1c44b401164c279820e1400e2f810f9d3ebc44b4011971fb8ca131400e2b92ddb98e8c44b4011a1246e5f518c01e22bce62731fc54b40115f79909e221400e23c2de4b622c54b4011f0ae6994e414000d4001f0211002520445534d53920100980104aa010b01020304060708090a0b0ec80101d00101e20100ea0108080a1003182d2805	2023-08-04 09:05:20	2023-08-04 09:05:20.505876	\N	56390c43882706991ca21e0552a1e783dd489e4767a3dd7dcdf7c3c1946cfa61
live/DEMO/cur	\\x70010000ff310a0444454d4f10011a2d0a0531372d33357a240812121e080112126e65742e736166652d736b792e4d45544152220608b8f7b2a60618011a2d0a0531312d32392f0013f0fb22030a015922030a014122030a014222030a014322030a014422030a014822030a014a22030a014522030a01462a030a014e2a030a01532a040a0248412a040a0248422a040a024a412a040a024a422a030a0157720b08d2ffb2a60610d5b791218a01a5010a3345534d53203034303835305a2032353031304b54203939393920534354303138204f56433032372031382f3133205131303036120445534d531a0608b8f7b2a60621a4703d0ad7c34b40293d0ad7a370bd2a40310000000000003240390000000000002a4040fa01480a59d7a3703d0ad718406171ac8bdb68b43d407a0510880e18077a05108c1518098201044d564652e201054d45544152e9010000000000005140	2023-08-04 09:07:30	2023-08-04 09:07:30.070388	\N	296975f9b40a8bd3e9945fdaf688915e9e5710cb5199301a3ca39a0e91f2edba
\.


--
-- Name: atlas atlas_pkey; Type: CONSTRAINT; Schema: atlas; Owner: atlas
--

ALTER TABLE ONLY atlas.atlas
    ADD CONSTRAINT atlas_pkey PRIMARY KEY (key);


--
-- PostgreSQL database dump complete
--


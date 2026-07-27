import { Router, type IRouter } from "express";
<<<<<<< HEAD
import healthRouter from "./health";

const router: IRouter = Router();

router.use(healthRouter);
=======
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation"; // re-enabled 2026-07-22
import reportRouter    from "./report";
import configRouter    from "./config";
import dubbedRouter    from "./dubbed";

const router: IRouter = Router();

router.use(configRouter);
router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter); // re-enabled 2026-07-22
router.use(dubbedRouter);
router.use(reportRouter);
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175

export default router;

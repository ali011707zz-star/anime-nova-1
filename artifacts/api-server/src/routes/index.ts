import { Router, type IRouter } from "express";
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

export default router;

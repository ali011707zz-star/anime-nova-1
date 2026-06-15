import { Router, type IRouter } from "express";
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation";
import reportRouter    from "./report";
import configRouter    from "./config";

const router: IRouter = Router();

router.use(configRouter);
router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter);
router.use(reportRouter);

export default router;

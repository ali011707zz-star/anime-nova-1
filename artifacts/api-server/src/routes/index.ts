import { Router, type IRouter } from "express";
<<<<<<< HEAD
import healthRouter from "./health";

const router: IRouter = Router();

router.use(healthRouter);
=======
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation";
import reportRouter    from "./report";
import configRouter    from "./config";
import dubbedRouter    from "./dubbed";

const router: IRouter = Router();

router.use(configRouter);
router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter);
router.use(dubbedRouter);
router.use(reportRouter);
>>>>>>> origin/main

export default router;

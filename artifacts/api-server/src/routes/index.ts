import { Router, type IRouter } from "express";
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation.js";
import reportRouter    from "./report";
import configRouter    from "./config";
import dubbedRouter    from "./dubbed";
import sanimeRouter   from "./sanime";
import adsRouter      from "./ads";
import sourceCatalogRouter from "./sourceCatalog.js";

const router: IRouter = Router();

router.use(configRouter);
router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter);
router.use(dubbedRouter);
router.use(sanimeRouter);
router.use(reportRouter);
router.use(adsRouter);
router.use(sourceCatalogRouter);

export default router;

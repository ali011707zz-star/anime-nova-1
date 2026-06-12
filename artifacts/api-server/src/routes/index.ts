import { Router, type IRouter } from "express";
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation";
import kartoonRouter   from "./kartoon";

const router: IRouter = Router();

router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter);
router.use(kartoonRouter);

export default router;

import { Router, type IRouter } from "express";
import healthRouter    from "./health";
import animeRouter     from "./anime";
import animationRouter from "./animation";


const router: IRouter = Router();

router.use(healthRouter);
router.use(animeRouter);
router.use(animationRouter);

export default router;

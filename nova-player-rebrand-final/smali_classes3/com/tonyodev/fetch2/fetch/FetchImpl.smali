.class public Lcom/tonyodev/fetch2/fetch/FetchImpl;
.super Ljava/lang/Object;
.source "FetchImpl.kt"

# interfaces
.implements Lcom/tonyodev/fetch2/Fetch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;,
        Lcom/tonyodev/fetch2/fetch/FetchImpl$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;


# instance fields
.field private final activeDownloadsRunnable:Ljava/lang/Runnable;

.field private final activeDownloadsSet:Ljava/util/Set;

.field private volatile closed:Z

.field private final fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field private final lock:Ljava/lang/Object;

.field private final logger:Lcom/tonyodev/fetch2core/Logger;

.field private final namespace:Ljava/lang/String;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$12Pg5yz3bjWGJ4mJjPjU_k8kpLM(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads$lambda$40$lambda$39$lambda$37(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2sz5BHPB5PHooH6ONauzSFpQ1nw(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->removeListener$lambda$142$lambda$141(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3yVaPFMBO3s3tSyWKgDiQ2uxQYU(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry$lambda$79$lambda$78(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$50kT9zjgOyeZRQ_jNuDkmSjTo-I(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel$lambda$66(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8utUcAufDSP6rTyVTU0UULSSjU4(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest$lambda$17$lambda$16$lambda$15(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9IimSCI05ac1xY3_yK4AZnM1DUg(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeAll$lambda$43$lambda$42(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9bpvvQ6ioKyd9Xf9W-hfadMF9ig(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel$lambda$67(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXXo3AGr0XE6ewTOh3px2r4O9Ck(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->hasActiveDownloads$lambda$138$lambda$137(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C4DH7mKWqbDnR66KmSbtTrmE-44(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->_init_$lambda$3(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DF0UjuoO0AXxxn-O5wkGIEgQ8uQ(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getDownloadsWithStatus$lambda$120$lambda$119(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EizPyLrUFe8rd6131520pCIXo-4(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction$lambda$74$lambda$73$lambda$71(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FKw-XYpzbq31unvfZKpfwEzzm00(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->replaceExtras$lambda$96$lambda$95$lambda$93(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9zVsQ7JXu4UwgFHIM5IrnYo100(Lcom/tonyodev/fetch2core/Func;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->hasActiveDownloads$lambda$138$lambda$137$lambda$136(Lcom/tonyodev/fetch2core/Func;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GKRE84CNTb-exr7YCGccpJogq18(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry$lambda$79$lambda$78$lambda$77(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GREJ_OmQ-lsJDkdXBC_PYATVYFE(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads$lambda$23$lambda$22(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HAGTmO2-fMXkPKLnxctdsVYWRNo(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete$lambda$55(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HNRMkpQBKQYZQW1UllS7kiGAOks(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$7(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYpzSPvEamfOf8II11MtzePwtS4(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction$lambda$54$lambda$53(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JtX5rYjGCEOQS1US211xH1TWYhA(Lcom/tonyodev/fetch2core/Func;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$7$lambda$6(Lcom/tonyodev/fetch2core/Func;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mj8mERMegvLnrqy6apnDU22m3nc(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry$lambda$84(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDa2syFXErfwbpnEgylaZwkOqso(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction$lambda$54$lambda$53$lambda$51(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfbriUO0RxJXUlzDrKn-BncYPik(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction$lambda$54$lambda$53$lambda$52(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIvps8xiHhpspGsv40TFk7lGIM8(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction$lambda$74$lambda$73(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Op4pXIh_LzWrYK5ZCsfQkJrM7wY(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction$lambda$65$lambda$64(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SKB40vQDmd7gqK7nTl1sDvpknzs(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads$lambda$23$lambda$22$lambda$20(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SthrgXBMzSnq3Uj-k1LwPAFawZ8(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest$lambda$17$lambda$16$lambda$14(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5-eDniQfRwhK7FcQe5qmupS_7M(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove$lambda$45(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJ6-xQLsLCLteChrrb9YkqEoOKM(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeF-IDtkliwp-PYz9dQLHkcrrUk(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->replaceExtras$lambda$96$lambda$95$lambda$94(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_K59OkZaeGiV9HbmglswMtVl68U(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest$lambda$17$lambda$16(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d1vzHACwgZLUsFvsfb6J4l9vJWU(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getDownloads$lambda$99$lambda$98(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jWkuFgaVmpj7M6laxSSwSSBQTTg(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$7$lambda$4(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4QWrVA4PqGxVErM9_z2NR_plUE(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads$lambda$40$lambda$39(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lDdGRPShCWyeKHdqJLjiFIRIaRU(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads$lambda$23$lambda$22$lambda$21(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_VN45aOvXUX8b2RqaHHi_Fihy4(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete$lambda$56(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oVgW9bLsuprNdau6zD9LD2YxQ7U(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getDownloads$lambda$99$lambda$98$lambda$97(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1LqUgjR52cdx463BGMd6601np8(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction$lambda$65$lambda$64$lambda$62(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_bcbl9rvv01wpZa8Hf3CJnc5gM(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->replaceExtras$lambda$96$lambda$95(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qOB--AMGUwKHoXd9L7z8B9UpfaY(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener$lambda$140$lambda$139(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r2737Nq0H1zzTKrxS_9X9anfAvk(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction$lambda$65$lambda$64$lambda$63(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sORHX-5p0uXlQWvLftAoRpqRJ1Q(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getDownloadsWithStatus$lambda$120$lambda$119$lambda$118(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t2bQ41oiMgFX-G4HbW40JWaKOC4(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove$lambda$44(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wGcXqg6_iFnIx-uxyQjVR1VYFdY(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$7$lambda$5(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wquxqPK80QafKN2JdXoz9wTbhGk(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads$lambda$40$lambda$39$lambda$38(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yIUhrMbfNLvk0MC0XI91n60hFLU(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_dGaUjpOHR7NdWrCqVarpLwnrg(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause$lambda$18(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytGtwSZp19t3bjVAWjWRaQaonkQ(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction$lambda$74$lambda$73$lambda$72(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxs44PC0RQxfZgYUs60g861hX-0(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry$lambda$79$lambda$78$lambda$76(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzxUdqC5_M1aaqhXEV1hshuJZxE(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume$lambda$35(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Landroid/os/Handler;Lcom/tonyodev/fetch2/fetch/FetchHandler;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->namespace:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    .line 19
    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    .line 20
    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    .line 21
    iput-object p5, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    .line 22
    iput-object p6, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    .line 23
    iput-object p7, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    .line 24
    iput-object p8, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    .line 26
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    .line 35
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsSet:Ljava/util/Set;

    .line 36
    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda5;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda6;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {p3, p1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 62
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->registerActiveDownloadsRunnable()V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->init()V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda26;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 47
    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->registerActiveDownloadsRunnable()V

    :cond_2
    return-void
.end method

.method private static final addListener$lambda$140$lambda$139(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)V

    .line 1034
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final cancel$lambda$66(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->cancel(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final cancel$lambda$67(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 578
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 580
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final delete$lambda$55(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->delete(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final delete$lambda$56(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 492
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 494
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final enqueue$lambda$7(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    .line 73
    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    if-eq v0, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;

    invoke-direct {p2, p1, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda44;-><init>(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda45;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda45;-><init>(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda46;

    invoke-direct {p2, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda46;-><init>(Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final enqueue$lambda$7$lambda$4(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$7$lambda$5(Lcom/tonyodev/fetch2core/Func;Lkotlin/Pair;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$7$lambda$6(Lcom/tonyodev/fetch2core/Func;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 84
    sget-object v0, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 117
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 162
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final enqueueRequest$lambda$17$lambda$16(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 6

    .line 1663
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1313
    move-object v4, v3

    check-cast v4, Lcom/tonyodev/fetch2/Request;

    .line 119
    invoke-virtual {v4}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 1314
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1315
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p3

    goto/16 :goto_2

    .line 119
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 123
    iget-object v0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0, p0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->enqueue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1318
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 125
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    .line 126
    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/fetch/FetchImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "Added "

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    .line 141
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    .line 133
    sget-object v4, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 134
    iget-object v4, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    .line 135
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 136
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    .line 137
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queued "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for download"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_4
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    .line 129
    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :cond_5
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda35;

    invoke-direct {v2, p3, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda35;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 121
    :cond_6
    new-instance p3, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "request_list_not_distinct"

    invoke-direct {p3, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_2
    iget-object v0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enqueue list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p0

    .line 154
    invoke-virtual {p0, p3}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_7

    .line 156
    iget-object p1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p3, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda36;

    invoke-direct {p3, p2, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda36;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final enqueueRequest$lambda$17$lambda$16$lambda$14(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1307
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1629
    check-cast v1, Lkotlin/Pair;

    .line 149
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getRequest()Lcom/tonyodev/fetch2/Request;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1629
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final enqueueRequest$lambda$17$lambda$16$lambda$15(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 157
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private final executeCancelAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 608
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final executeCancelAction$lambda$74$lambda$73(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 5

    .line 610
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1332
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 612
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelled download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 613
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/FetchListener;->onCancelled(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 615
    :cond_0
    iget-object v0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda42;

    invoke-direct {v1, p3, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda42;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 619
    :goto_1
    iget-object p3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch with namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p3

    .line 621
    invoke-virtual {p3, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 623
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda43;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda43;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :cond_1
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executeCancelAction$lambda$74$lambda$73$lambda$71(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 616
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final executeCancelAction$lambda$74$lambda$73$lambda$72(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 624
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private final executeDeleteAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 542
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda25;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda25;-><init>(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final executeDeleteAction$lambda$65$lambda$64(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 5

    .line 544
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1330
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 546
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 547
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 549
    :cond_0
    iget-object v0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda47;

    invoke-direct {v1, p3, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda47;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 553
    :goto_1
    iget-object p3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch with namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p3

    .line 555
    invoke-virtual {p3, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 557
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda48;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda48;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :cond_1
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executeDeleteAction$lambda$65$lambda$64$lambda$62(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 550
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final executeDeleteAction$lambda$65$lambda$64$lambda$63(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 558
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private final executeRemoveAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 460
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda28;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda28;-><init>(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final executeRemoveAction$lambda$54$lambda$53(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 5

    .line 462
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1328
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 464
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 465
    iget-object v2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/FetchListener;->onRemoved(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 467
    :cond_0
    iget-object v0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda38;

    invoke-direct {v1, p3, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda38;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 471
    :goto_1
    iget-object p3, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch with namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p3

    .line 473
    invoke-virtual {p3, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 475
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda39;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda39;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_1
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executeRemoveAction$lambda$54$lambda$53$lambda$51(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 468
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final executeRemoveAction$lambda$54$lambda$53$lambda$52(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 476
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getDownloads$lambda$99$lambda$98(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->getDownloads()Ljava/util/List;

    move-result-object v0

    .line 829
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda34;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getDownloads$lambda$99$lambda$98$lambda$97(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 830
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getDownloadsWithStatus$lambda$120$lambda$119(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->getDownloadsWithStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 920
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda27;

    invoke-direct {v0, p2, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda27;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 923
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getDownloadsWithStatus$lambda$120$lambda$119$lambda$118(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    .line 921
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final hasActiveDownloads$lambda$138$lambda$137(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result p1

    .line 1013
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;

    invoke-direct {v0, p2, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda37;-><init>(Lcom/tonyodev/fetch2core/Func;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final hasActiveDownloads$lambda$138$lambda$137$lambda$136(Lcom/tonyodev/fetch2core/Func;Z)V
    .locals 0

    .line 1014
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final pause$lambda$18(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 177
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 179
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final pauseDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 8

    .line 194
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 196
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda14;

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 225
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1
.end method

.method private static final pauseDownloads$lambda$23$lambda$22(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 4

    if-eqz p0, :cond_0

    .line 199
    :try_start_0
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p2, p0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->pause(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 202
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->pausedGroup(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1320
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/Download;

    .line 208
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paused download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 209
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/FetchListener;->onPaused(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p4, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda30;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 215
    :goto_2
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch with namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " error"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    .line 217
    invoke-virtual {p2, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_3

    .line 219
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda31;

    invoke-direct {p1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda31;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    :cond_3
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final pauseDownloads$lambda$23$lambda$22$lambda$20(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 212
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final pauseDownloads$lambda$23$lambda$22$lambda$21(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 220
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private final registerActiveDownloadsRunnable()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/FetchConfiguration;->getActiveDownloadsCheckInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final remove$lambda$44(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->remove(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final remove$lambda$45(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 418
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 420
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final removeListener$lambda$142$lambda$141(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;)Lkotlin/Unit;
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->removeListener(Lcom/tonyodev/fetch2/FetchListener;)V

    .line 1044
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final replaceExtras$lambda$96$lambda$95(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 2

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->replaceExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/Download;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 805
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda32;

    invoke-direct {v1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda32;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 810
    iget-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to replace extras on download with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 811
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p1

    .line 812
    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p4, :cond_0

    .line 814
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda33;

    invoke-direct {p2, p4, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda33;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final replaceExtras$lambda$96$lambda$95$lambda$93(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    .line 806
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final replaceExtras$lambda$96$lambda$95$lambda$94(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 815
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final resume$lambda$35(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 324
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 326
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final resumeAll$lambda$43$lambda$42(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lkotlin/Unit;
    .locals 5

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->resumeAll()Ljava/util/List;

    move-result-object v0

    .line 1326
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 388
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queued download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    .line 390
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resumed download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/FetchListener;->onResumed(Lcom/tonyodev/fetch2/Download;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch with namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p0

    .line 396
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    .line 398
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final resumeDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 8

    .line 345
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 347
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda3;

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 378
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1
.end method

.method private static final resumeDownloads$lambda$40$lambda$39(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 4

    if-eqz p0, :cond_0

    .line 350
    :try_start_0
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {p2, p0}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->resume(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 353
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->resumeGroup(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1324
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/Download;

    .line 359
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queued download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 360
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    .line 361
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 362
    iget-object v1, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/FetchListener;->onResumed(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p4, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda22;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 368
    :goto_2
    iget-object p2, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch with namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " error"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4, p0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    .line 370
    invoke-virtual {p2, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_3

    .line 372
    iget-object p0, p1, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda23;

    invoke-direct {p1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda23;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    :cond_3
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final resumeDownloads$lambda$40$lambda$39$lambda$37(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final resumeDownloads$lambda$40$lambda$39$lambda$38(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 373
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final retry$lambda$79$lambda$78(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lkotlin/Unit;
    .locals 5

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->retry(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1334
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    .line 640
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queued "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda40;

    invoke-direct {v1, p3, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda40;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 647
    :goto_1
    iget-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch with namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object p3

    .line 649
    invoke-virtual {p3, p1}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    .line 651
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda41;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda41;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    :cond_1
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final retry$lambda$79$lambda$78$lambda$76(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 644
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final retry$lambda$79$lambda$78$lambda$77(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    .line 652
    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static final retry$lambda$84(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 696
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 698
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    .line 1244
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1245
    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "This fetch instance has been closed. Create a new instance using the builder."

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0, p1, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener(Lcom/tonyodev/fetch2/FetchListener;Z)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;Z)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p0, p1, p2, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 1030
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 1032
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public cancel(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancel(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 576
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda4;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda17;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda9;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda8;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda19;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public getDownloads(Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 827
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda15;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsWithStatus(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 916
    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 918
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda10;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public hasActiveDownloads(ZLcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 1011
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda29;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 1017
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public isClosed()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public pause(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda16;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public remove(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda2;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda13;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(Lkotlin/jvm/functions/Function0;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 1040
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 1042
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda7;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public replaceExtras(ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 8

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 801
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v0, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public resume(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda12;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public resumeAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 384
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda11;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V

    .line 399
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public retry(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public retry(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    .line 694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda18;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public retry(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 636
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$$ExternalSyntheticLambda20;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

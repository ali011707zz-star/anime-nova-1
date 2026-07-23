.class final Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExoPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.player.easy.player.ExoPlayerActivity$onPlayerError$1$1"
    f = "ExoPlayerActivity.kt"
    i = {
        0x0
    }
    l = {
        0x65d
    }
    m = "invokeSuspend"
    n = {
        "sourceType"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $error:Landroidx/media3/common/PlaybackException;

.field final synthetic $url:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/player/easy/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/player/ExoPlayerActivity;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iput-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$error:Landroidx/media3/common/PlaybackException;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$error:Landroidx/media3/common/PlaybackException;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1620
    iget v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1622
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getFromNetwork$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "network"

    goto :goto_0

    .line 1623
    :cond_2
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getFromAsOrDs$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "as_or_ds"

    goto :goto_0

    .line 1624
    :cond_3
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getFromInternalLocal$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "local_internal"

    goto :goto_0

    .line 1625
    :cond_4
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getFromSharedLocal$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "local_shared"

    goto :goto_0

    .line 1626
    :cond_5
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getFromChooser$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "local_chooser"

    goto :goto_0

    .line 1627
    :cond_6
    const-string p1, "unknown"

    .line 1629
    :goto_0
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getViewModel(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/player/ExoViewModel;

    move-result-object v1

    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->label:I

    invoke-virtual {v1, p0}, Lcom/player/easy/player/ExoViewModel;->fetchIpInformation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    move-object p1, v1

    .line 1620
    :goto_1
    check-cast p1, Lcom/player/easy/data/IpInformation;

    .line 1630
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->$error:Landroidx/media3/common/PlaybackException;

    .line 1631
    invoke-static {v3}, Lcom/player/easy/player/ExoPlayerActivity;->access$getAnimeTitle$p(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_8

    const-string v6, "animeTitle"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_8
    const-string v8, ""

    if-nez v6, :cond_9

    move-object v6, v8

    :cond_9
    const-string v9, "anime_title"

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-static {v3}, Lcom/player/easy/player/ExoPlayerActivity;->access$getEpisodeTitle$p(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    move-object v6, v8

    :cond_a
    const-string v9, "episode_title"

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string v6, "url"

    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v4, "source_type"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget v0, v5, Landroidx/media3/common/PlaybackException;->errorCode:I

    const-string v4, "error_code"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1636
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/16 v4, 0x64

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    move-object v0, v7

    :goto_2
    if-nez v0, :cond_c

    move-object v0, v8

    :cond_c
    const-string v5, "error_message"

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-static {v3}, Lcom/player/easy/player/ExoPlayerActivity;->access$getHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result v0

    const-string v3, "host_reachable"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1638
    const-string v0, "app_version"

    const-string v3, "1.0.6"

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v0, "version_code"

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_d

    .line 1640
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    move-object v0, v7

    :goto_3
    if-nez v0, :cond_e

    move-object v0, v8

    :cond_e
    const-string v3, "country_code"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 1641
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v7

    :goto_4
    if-nez v0, :cond_10

    move-object v0, v8

    :cond_10
    const-string v3, "country"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    .line 1642
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getRegionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_11
    move-object v0, v7

    :goto_5
    if-nez v0, :cond_12

    move-object v0, v8

    :cond_12
    const-string v3, "region"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    .line 1643
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    move-object v0, v7

    :goto_6
    if-nez v0, :cond_14

    move-object v0, v8

    :cond_14
    const-string v3, "city"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 1644
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getIsp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    move-object v0, v7

    :goto_7
    if-nez v0, :cond_16

    move-object v0, v8

    :cond_16
    const-string v3, "isp"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 1645
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getOrg()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_17
    move-object v0, v7

    :goto_8
    if-nez v0, :cond_18

    move-object v0, v8

    :cond_18
    const-string v3, "org"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 1646
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getAs()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_19
    move-object v0, v7

    :goto_9
    if-nez v0, :cond_1a

    move-object v0, v8

    :cond_1a
    const-string v3, "as"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 1647
    invoke-virtual {p1}, Lcom/player/easy/data/IpInformation;->getTimezone()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_1b
    move-object p1, v7

    :goto_a
    if-nez p1, :cond_1c

    goto :goto_b

    :cond_1c
    move-object v8, p1

    :goto_b
    const-string p1, "timezone"

    invoke-virtual {v2, p1, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1630
    const-string v0, "player_error"

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1649
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-static {v0}, Lcom/player/easy/player/ExoPlayerActivity;->access$getHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1650
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1651
    sget v1, Lcom/player/easy/R$string;->text_link_currputed:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1652
    sget v1, Lcom/player/easy/R$string;->ok:I

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1653
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-object p1

    .line 1655
    :cond_1d
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1$1;->this$0:Lcom/player/easy/player/ExoPlayerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1656
    sget v1, Lcom/player/easy/R$string;->text_use_vpn:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1657
    sget v1, Lcom/player/easy/R$string;->ok:I

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1658
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

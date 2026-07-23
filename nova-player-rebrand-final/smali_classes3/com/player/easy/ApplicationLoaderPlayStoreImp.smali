.class public final Lcom/player/easy/ApplicationLoaderPlayStoreImp;
.super Lcom/player/easy/App;
.source "ApplicationLoaderPlayStoreImp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/player/easy/ApplicationLoaderPlayStoreImp;",
        "Lcom/player/easy/App;",
        "<init>",
        "()V",
        "onCreateGoogleServiceProvider",
        "Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;",
        "playstore-app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/player/easy/App;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateGoogleServiceProvider()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
    .locals 1

    .line 5
    new-instance v0, Lcom/player/easy/PlayStoreGoogleServiceProvider;

    invoke-direct {v0}, Lcom/player/easy/PlayStoreGoogleServiceProvider;-><init>()V

    return-object v0
.end method

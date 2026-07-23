.class public final Lcom/player/easy/GoogleServiceController$Companion$default$1;
.super Ljava/lang/Object;
.source "GoogleServiceController.kt"

# interfaces
.implements Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/GoogleServiceController$Companion;->default()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/player/easy/GoogleServiceController$Companion$default$1",
        "Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;",
        "initializeConsentAndAdsIfNeeded",
        "",
        "activity",
        "Landroid/app/Activity;",
        "app_release"
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
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeConsentAndAdsIfNeeded(Landroid/app/Activity;)V
    .locals 1

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/player/easy/ui/folders/AdHolder$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/folders/AdHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/player/easy/ui/folders/AdHolder$1",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdLoaded",
        "",
        "onAdFailedToLoad",
        "p0",
        "Lcom/google/android/gms/ads/LoadAdError;",
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


# instance fields
.field final synthetic this$0:Lcom/player/easy/ui/folders/AdHolder;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/folders/AdHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/ui/folders/AdHolder$1;->this$0:Lcom/player/easy/ui/folders/AdHolder;

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/player/easy/ui/folders/AdHolder$1;->this$0:Lcom/player/easy/ui/folders/AdHolder;

    invoke-virtual {p1, v1}, Lcom/player/easy/ui/folders/AdHolder;->setAdLoaded(Z)V

    .line 77
    iget-object p1, p0, Lcom/player/easy/ui/folders/AdHolder$1;->this$0:Lcom/player/easy/ui/folders/AdHolder;

    invoke-virtual {p1}, Lcom/player/easy/ui/folders/AdHolder;->bind()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 69
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "inline banner onAdLoaded"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder$1;->this$0:Lcom/player/easy/ui/folders/AdHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/player/easy/ui/folders/AdHolder;->setAdLoaded(Z)V

    .line 71
    iget-object v0, p0, Lcom/player/easy/ui/folders/AdHolder$1;->this$0:Lcom/player/easy/ui/folders/AdHolder;

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/AdHolder;->bind()V

    return-void
.end method

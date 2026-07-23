.class public final Lcom/facebook/ads/redexgen/X/Qr;
.super Landroid/database/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/facebook/ads/redexgen/X/Qs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60618
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 60619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qr;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 60620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qr;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qs;->A00()V

    .line 60621
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 60622
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

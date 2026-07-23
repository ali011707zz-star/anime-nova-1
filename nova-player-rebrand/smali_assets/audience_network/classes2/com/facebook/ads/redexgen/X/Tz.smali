.class public final Lcom/facebook/ads/redexgen/X/Tz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdSizeApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->createAdSizeApi(I)Lcom/facebook/ads/internal/api/AdSizeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;Lcom/facebook/ads/redexgen/X/Vp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66361
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tz;->A00:Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 66362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vp;->A03()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 66363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tz;->A01:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vp;->A04()I

    move-result v0

    return v0
.end method

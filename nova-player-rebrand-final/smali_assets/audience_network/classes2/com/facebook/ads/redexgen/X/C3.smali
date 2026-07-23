.class public final Lcom/facebook/ads/redexgen/X/C3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/kp;->A03(Lcom/facebook/ads/redexgen/X/CC;)Lcom/facebook/ads/redexgen/X/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$separatorMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C3;->A00:Lcom/facebook/ads/redexgen/X/CC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/kp;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/2R;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 31705
    new-instance v0, Lcom/facebook/ads/redexgen/X/2R;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2R;-><init>(Lcom/facebook/ads/redexgen/X/C3;Lcom/facebook/ads/redexgen/X/kp;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic AAl(Lcom/facebook/ads/redexgen/X/kp;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 31706
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/C3;->A00(Lcom/facebook/ads/redexgen/X/kp;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/2R;

    move-result-object v0

    return-object v0
.end method

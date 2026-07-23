.class public final Lcom/facebook/ads/redexgen/X/op;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/79;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7A;-><init>([Lcom/facebook/ads/redexgen/X/7p;JLcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/F0;Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/Ex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7A;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Cx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7A;Lcom/facebook/ads/redexgen/X/Cx;)V
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

    .line 103378
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/op;->A00:Lcom/facebook/ads/redexgen/X/7A;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/op;->A01:Lcom/facebook/ads/redexgen/X/Cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5W(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/F0;J)Lcom/facebook/ads/redexgen/X/np;
    .locals 1

    .line 103379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/op;->A01:Lcom/facebook/ads/redexgen/X/Cx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Cx;->A5W(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/F0;J)Lcom/facebook/ads/redexgen/X/np;

    move-result-object v0

    return-object v0
.end method

.method public final AHk(Lcom/facebook/ads/redexgen/X/np;)V
    .locals 1

    .line 103380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/op;->A01:Lcom/facebook/ads/redexgen/X/Cx;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cx;->AHk(Lcom/facebook/ads/redexgen/X/np;)V

    .line 103381
    return-void
.end method

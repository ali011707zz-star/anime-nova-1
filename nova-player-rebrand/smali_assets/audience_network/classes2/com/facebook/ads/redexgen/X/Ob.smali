.class public final Lcom/facebook/ads/redexgen/X/Ob;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z2;->A06()Lcom/facebook/ads/redexgen/X/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1494
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "M3Te92XvVv4q3bfKEkaCq6oPQP87x4vv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LzmiiHhJsyKuUkJv7K1Ir2o"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KopJ75"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "b4r1pmUHtrvrrbICXjY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ceBgm8EiRhrot5ffXZtZ35omPt2ZFFf0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0EayevzsZQe4lRY4RLfa4MEWre"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N9h8Vj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K1Ob6mZ8MwS9WZtXZ80XEzEALvtTcRJ2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ob;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55903
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 55904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A05(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Oq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A05(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Oq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A0G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A08(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0T()V

    .line 55906
    return-void

    .line 55907
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A08(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 55908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A01(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A01(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 55910
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0B(Lcom/facebook/ads/redexgen/X/Z2;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Z1;

    .line 55911
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Z1;
    if-eqz v0, :cond_2

    .line 55912
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Z1;->AEA()V

    .line 55913
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ob;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ob;->A01:[Ljava/lang/String;

    const-string v1, "2rS8p9kEkH8XxeBlGl7RSlB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "nqXy6qNf0NylKakjBUJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Z2;->A08(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 55914
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

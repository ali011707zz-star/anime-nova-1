.class public final Lcom/facebook/ads/redexgen/X/kM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/MM;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/kS;

.field public final A05:Lcom/facebook/ads/redexgen/X/MV;

.field public final A06:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A07:Ljava/io/File;

.field public final A08:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/MO;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/Random;

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3158
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bCiwVY89t3fNm3gVh5Cta1r1ex617UD6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2pbQHFWCVx6Uhmp9EyO9uCwpcu4x9Dl0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "32tJ4jyYWOzcf72n5Wgg62"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "i6oCPG91V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KagoX429g1hrk2zqYLocuLLyf0lslURo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DhZpyS71VRHuUy7Qk1AUkZm91VAyIgrZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oeCQOWeJcqbtbEq5qioytyhoePvaJg5Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kM;->A07()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kM;->A0D:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89677
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;[BZ)V

    .line 89678
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;Lcom/facebook/ads/redexgen/X/5O;[BZZ)V
    .locals 7

    .line 89679
    new-instance v1, Lcom/facebook/ads/redexgen/X/Mi;

    move v5, p5

    move-object v4, p4

    move-object v2, p3

    move v6, p6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/5O;Ljava/io/File;[BZZ)V

    .line 89680
    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    .line 89681
    new-instance v0, Lcom/facebook/ads/redexgen/X/MV;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/MV;-><init>(Lcom/facebook/ads/redexgen/X/5O;)V

    .line 89682
    :goto_0
    invoke-direct {p0, v3, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;Lcom/facebook/ads/redexgen/X/Mi;Lcom/facebook/ads/redexgen/X/MV;)V

    .line 89683
    return-void

    .line 89684
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;Lcom/facebook/ads/redexgen/X/Mi;Lcom/facebook/ads/redexgen/X/MV;)V
    .locals 4

    .line 89685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89686
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/kM;->A0H(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    .line 89688
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kM;->A04:Lcom/facebook/ads/redexgen/X/kS;

    .line 89689
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    .line 89690
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    .line 89691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A08:Ljava/util/HashMap;

    .line 89692
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A09:Ljava/util/Random;

    .line 89693
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/kS;->AIj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A0A:Z

    .line 89694
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    .line 89695
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 89696
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x32

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mp;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/Mp;-><init>(Lcom/facebook/ads/redexgen/X/kM;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 89697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->start()V

    .line 89698
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 89699
    return-void

    .line 89700
    .end local v0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x2e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;[BZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89701
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v5, p4

    move-object v4, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;Lcom/facebook/ads/redexgen/X/5O;[BZZ)V

    .line 89702
    return-void
.end method

.method public static A00(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89703
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 89704
    .local v0, "uid":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 89705
    :goto_0
    const/16 v0, 0x10

    invoke-static {v1, v2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    .line 89706
    .local v2, "hexUid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v0, 0x6b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89707
    .local v3, "hexUidFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89708
    return-wide v1

    .line 89709
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    goto :goto_0

    .line 89710
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/16 v1, 0x1b

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)J
    .locals 2

    .line 89711
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A02([Ljava/io/File;)J
    .locals 7

    .line 89712
    array-length v6, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, p0, v5

    .line 89713
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89714
    .local v3, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89715
    :try_start_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/kM;->A01(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89716
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x115

    const/16 v1, 0x14

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 89717
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 89718
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89719
    :goto_1
    return-wide v0

    .line 89720
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/kL;
    .locals 7

    .line 89721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v6

    .line 89722
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    if-nez v6, :cond_0

    .line 89723
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/kL;->A04(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    return-object v0

    .line 89724
    :cond_0
    :goto_0
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Mg;->A04(JJ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v5

    .line 89725
    .local v1, "span":Lcom/facebook/ads/redexgen/X/kL;
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 89726
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A06()V

    .line 89727
    goto :goto_0

    .line 89728
    :cond_1
    return-object v5
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kM;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "f7QnNjNC08rjnWmNVHuGYagSWe5Lcp9o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "r0Bisby3rM4igG5oRpf6tXDb0tjiDQ2I"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 8

    .line 89729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89730
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kM;->A0F(Ljava/io/File;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/MM; {:try_start_0 .. :try_end_0} :catch_0

    .line 89731
    :catch_0
    move-exception v0

    .line 89732
    .local v0, "e":Lcom/facebook/ads/redexgen/X/MM;
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    .line 89733
    return-void

    .line 89734
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/MM;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "a7bsaZYeTJGewaTpvlEBtyxkDQTMEU8W"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kn4PmWwOChlyCy8qyQNRjkcz1fm49U24"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 89735
    .local v0, "files":[Ljava/io/File;
    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_1

    .line 89736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc8

    const/16 v2, 0x26

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89737
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 89738
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    .line 89739
    return-void

    .line 89740
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/kM;->A02([Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    .line 89741
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    const-wide/16 v4, -0x1

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 89742
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/kM;->A00(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89743
    :catch_1
    move-exception v5

    .line 89744
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x66

    const/16 v2, 0x1c

    const/16 v1, 0x72

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89745
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89746
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    .line 89747
    return-void

    .line 89748
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    invoke-virtual {v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Mi;->A0J(J)V

    .line 89749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 89750
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A01:J

    invoke-virtual {v4, v1, v2}, Lcom/facebook/ads/redexgen/X/MV;->A06(J)V

    .line 89751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MV;->A05()Ljava/util/Map;

    move-result-object v4

    .line 89752
    .local v2, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/kM;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 89753
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/MV;->A09(Ljava/util/Set;)V

    goto :goto_2

    .line 89754
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/kM;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 89755
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mi;->A0H()V

    .line 89756
    :try_start_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mi;->A0I()V

    goto :goto_3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89757
    :catch_2
    move-exception v4

    .line 89758
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x134

    const/16 v2, 0x19

    const/16 v1, 0x19

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89759
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 89760
    :catch_3
    move-exception v5

    .line 89761
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa4

    const/16 v2, 0x24

    const/16 v1, 0x1d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89762
    .restart local v3    # "message":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89763
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    .line 89764
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06()V
    .locals 9

    .line 89765
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89766
    .local v0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0G()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mg;

    .line 89767
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mg;->A06()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/MZ;

    .line 89768
    .local v4, "span":Lcom/facebook/ads/redexgen/X/MZ;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    .line 89769
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89770
    :cond_2
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "aqjjwslhzF6rAKukFAflKhlVTVCMUUBi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "oi6ATHfePUfqMvf6S7GQLdSJgMPLAUWw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_4

    .line 89771
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kM;->A0A(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89772
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89773
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x14d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kM;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x35t
        0x29t
        0x24t
        0x63t
        0x4ct
        0x4dt
        0x56t
        0x4at
        0x47t
        0x50t
        0x2t
        0x71t
        0x4bt
        0x4ft
        0x52t
        0x4et
        0x47t
        0x61t
        0x43t
        0x41t
        0x4at
        0x47t
        0x2t
        0x4bt
        0x4ct
        0x51t
        0x56t
        0x43t
        0x4ct
        0x41t
        0x47t
        0x2t
        0x57t
        0x51t
        0x47t
        0x51t
        0x2t
        0x56t
        0x4at
        0x47t
        0x2t
        0x44t
        0x4dt
        0x4et
        0x46t
        0x47t
        0x50t
        0x18t
        0x2t
        0x72t
        0x4ft
        0x58t
        0x67t
        0x5bt
        0x56t
        0x4et
        0x52t
        0x45t
        0xdt
        0x64t
        0x5et
        0x5at
        0x47t
        0x5bt
        0x52t
        0x74t
        0x56t
        0x54t
        0x5ft
        0x52t
        0x7et
        0x59t
        0x5et
        0x43t
        0x23t
        0x4t
        0xct
        0x9t
        0x0t
        0x1t
        0x45t
        0x11t
        0xat
        0x45t
        0x6t
        0x17t
        0x0t
        0x4t
        0x11t
        0x0t
        0x45t
        0x30t
        0x2ct
        0x21t
        0x45t
        0x3t
        0xct
        0x9t
        0x0t
        0x5ft
        0x45t
        0x1ft
        0x38t
        0x30t
        0x35t
        0x3ct
        0x3dt
        0x79t
        0x2dt
        0x36t
        0x79t
        0x3at
        0x2bt
        0x3ct
        0x38t
        0x2dt
        0x3ct
        0x79t
        0x3at
        0x38t
        0x3at
        0x31t
        0x3ct
        0x79t
        0xct
        0x10t
        0x1dt
        0x63t
        0x79t
        0x6ct
        0x4bt
        0x43t
        0x46t
        0x4ft
        0x4et
        0xat
        0x5et
        0x45t
        0xat
        0x49t
        0x58t
        0x4ft
        0x4bt
        0x5et
        0x4ft
        0xat
        0x49t
        0x4bt
        0x49t
        0x42t
        0x4ft
        0xat
        0x4et
        0x43t
        0x58t
        0x4ft
        0x49t
        0x5et
        0x45t
        0x58t
        0x53t
        0x10t
        0xat
        0x70t
        0x57t
        0x5ft
        0x5at
        0x53t
        0x52t
        0x16t
        0x42t
        0x59t
        0x16t
        0x5ft
        0x58t
        0x5ft
        0x42t
        0x5ft
        0x57t
        0x5at
        0x5ft
        0x4ct
        0x53t
        0x16t
        0x55t
        0x57t
        0x55t
        0x5et
        0x53t
        0x16t
        0x5ft
        0x58t
        0x52t
        0x5ft
        0x55t
        0x53t
        0x45t
        0xct
        0x16t
        0x2bt
        0xct
        0x4t
        0x1t
        0x8t
        0x9t
        0x4dt
        0x19t
        0x2t
        0x4dt
        0x1t
        0x4t
        0x1et
        0x19t
        0x4dt
        0xet
        0xct
        0xet
        0x5t
        0x8t
        0x4dt
        0x9t
        0x4t
        0x1ft
        0x8t
        0xet
        0x19t
        0x2t
        0x1ft
        0x14t
        0x4dt
        0xbt
        0x4t
        0x1t
        0x8t
        0x1et
        0x57t
        0x4dt
        0x30t
        0x17t
        0x1ft
        0x1at
        0x13t
        0x12t
        0x56t
        0x2t
        0x19t
        0x56t
        0x4t
        0x13t
        0x1bt
        0x19t
        0x0t
        0x13t
        0x56t
        0x10t
        0x1ft
        0x1at
        0x13t
        0x56t
        0x1ft
        0x18t
        0x12t
        0x13t
        0xet
        0x56t
        0x13t
        0x18t
        0x2t
        0x4t
        0xft
        0x56t
        0x10t
        0x19t
        0x4t
        0x4ct
        0x56t
        0x38t
        0x14t
        0x19t
        0x13t
        0x1at
        0x7t
        0x18t
        0x10t
        0x11t
        0x55t
        0x20t
        0x3ct
        0x31t
        0x55t
        0x13t
        0x1ct
        0x19t
        0x10t
        0x4ft
        0x55t
        0x66t
        0x5ct
        0x58t
        0x45t
        0x59t
        0x50t
        0x76t
        0x54t
        0x56t
        0x5dt
        0x50t
        0x61t
        0x46t
        0x5dt
        0x40t
        0x5bt
        0x5ct
        0x55t
        0x12t
        0x5bt
        0x5ct
        0x56t
        0x57t
        0x4at
        0x12t
        0x54t
        0x5bt
        0x5et
        0x57t
        0x12t
        0x54t
        0x53t
        0x5bt
        0x5et
        0x57t
        0x56t
    .end array-data
.end method

.method private final declared-synchronized A08()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89774
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89775
    monitor-exit p0

    return-void

    .line 89776
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A02:Lcom/facebook/ads/redexgen/X/MM;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89777
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 3

    .line 89778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 89779
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 89780
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 89781
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MO;->AG3(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89782
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89783
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A04:Lcom/facebook/ads/redexgen/X/kS;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MO;->AG3(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89784
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 6

    .line 89785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v4

    .line 89786
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/Mg;->A0D(Lcom/facebook/ads/redexgen/X/MZ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89787
    :cond_0
    return-void

    .line 89788
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A00:J

    .line 89789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    if-eqz v0, :cond_2

    .line 89790
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 89791
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89792
    .local v2, "e":Ljava/io/IOException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xee

    const/16 v1, 0x27

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 89793
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0K(Ljava/lang/String;)V

    .line 89794
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kM;->A09(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89795
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/kM;)V
    .locals 0

    .line 89796
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A05()V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/kL;)V
    .locals 4

    .line 89797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mg;->A08(Lcom/facebook/ads/redexgen/X/kL;)V

    .line 89798
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kM;->A00:J

    .line 89799
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kM;->A0D(Lcom/facebook/ads/redexgen/X/kL;)V

    .line 89800
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/kL;)V
    .locals 6

    .line 89801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 89802
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v5, :cond_1

    .line 89803
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 89804
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "Z81vyiSZneiyPRnyPjjjzGlAG4UB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/MO;

    invoke-interface {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/MO;->AG2(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89805
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89806
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A04:Lcom/facebook/ads/redexgen/X/kS;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/MO;->AG2(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89807
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/kL;Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 3

    .line 89808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 89809
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 89810
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 89811
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MO;->AG4(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89812
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89813
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A04:Lcom/facebook/ads/redexgen/X/kS;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MO;->AG4(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 89814
    return-void
.end method

.method public static A0F(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    .line 89815
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89816
    .end local v0
    :cond_0
    return-void

    .line 89817
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x82

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89818
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 89819
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/MU;",
            ">;)V"
        }
    .end annotation

    .line 89820
    .local p6, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    move-object/from16 v6, p0

    move-object/from16 v8, p3

    if-eqz v8, :cond_0

    array-length v0, v8

    if-nez v0, :cond_2

    .line 89821
    :cond_0
    if-nez p2, :cond_1

    .line 89822
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 89823
    :cond_1
    return-void

    .line 89824
    :cond_2
    array-length v5, v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v11, v8, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_9

    .line 89825
    .local v12, "file":Ljava/io/File;
    sget-object v2, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "8aOt5QXsfRNGpIpRxoAxSAZDoaRpec1S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wFGX3oecQoVuPclALoyOBFGO19d1hLj7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89826
    .local v13, "fileName":Ljava/lang/String;
    move-object/from16 v7, p4

    if-eqz p2, :cond_4

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 89827
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v11, v4, v0, v7}, Lcom/facebook/ads/redexgen/X/kM;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 89828
    .end local v6
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14
    .end local v15
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89829
    :cond_4
    if-eqz p2, :cond_5

    .line 89830
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Mi;->A0A(Ljava/lang/String;)Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    sget-object v9, Lcom/facebook/ads/redexgen/X/kM;->A0C:[Ljava/lang/String;

    const-string v1, "SjNVVRrUmgTFjXqPeyNmbh"

    const/4 v0, 0x3

    aput-object v1, v9, v0

    const-string v1, "SAWP83LvD"

    const/4 v0, 0x4

    aput-object v1, v9, v0

    if-nez v10, :cond_3

    const/4 v9, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/kM;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 89831
    :cond_5
    const-wide/16 v12, -0x1

    .line 89832
    .local v6, "length":J
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 89833
    .local v8, "lastTouchTimestamp":J
    if-eqz v7, :cond_7

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MU;

    .line 89834
    .local v14, "metadata":Lcom/facebook/ads/redexgen/X/MU;
    :goto_2
    if-eqz v0, :cond_6

    .line 89835
    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/MU;->A01:J

    .line 89836
    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/MU;->A00:J

    .line 89837
    .end local v6    # "length":J
    .end local v8    # "lastTouchTimestamp":J
    .local v15, "length":J
    .local p0, "lastTouchTimestamp":J
    :cond_6
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    .line 89838
    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/kL;->A01(Ljava/io/File;JJLcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    .line 89839
    .local v6, "span":Lcom/facebook/ads/redexgen/X/kL;
    if-eqz v0, :cond_8

    .line 89840
    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/kM;->A0C(Lcom/facebook/ads/redexgen/X/kL;)V

    goto :goto_1

    .line 89841
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 89842
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89843
    :cond_a
    return-void
.end method

.method public static declared-synchronized A0H(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/kM;

    monitor-enter v2

    .line 89844
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/kM;->A0D:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    .end local p0    # null:Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A0I(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/MZ;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 89845
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v1

    .line 89847
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mg;->A09()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89848
    .end local p1    # null:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 89849
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mg;->A06()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89850
    :goto_1
    monitor-exit p0

    return-object v1

    .line 89851
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A4E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ml;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89852
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89853
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A08()V

    .line 89854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Mi;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ml;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89855
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0I()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89856
    monitor-exit p0

    return-void

    .line 89857
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :catch_0
    move-exception v1

    .line 89858
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89859
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Ml;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A55(Ljava/io/File;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89860
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89861
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89862
    monitor-exit p0

    return-void

    .line 89863
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_2

    .line 89864
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89865
    monitor-exit p0

    return-void

    .line 89866
    .end local p1    # null:Ljava/io/File;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    .line 89867
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/kL;->A02(Ljava/io/File;JLcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/kL;

    .line 89868
    .local v0, "span":Lcom/facebook/ads/redexgen/X/kL;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Mg;

    .line 89869
    .local v3, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Mg;->A0B(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89870
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mg;->A03()Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00(Lcom/facebook/ads/redexgen/X/Mk;)J

    move-result-wide v5

    .line 89871
    .local v4, "contentLength":J
    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-eqz v0, :cond_3

    .line 89872
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_4

    :goto_1
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89873
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    if-eqz v0, :cond_5

    .line 89874
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 89875
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89876
    .local v7, "fileName":Ljava/lang/String;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kM;->A05:Lcom/facebook/ads/redexgen/X/MV;

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/MZ;->A00:J

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;JJ)V

    goto :goto_3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89877
    :catch_0
    move-exception v1

    .line 89878
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 89879
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/kM;->A0C(Lcom/facebook/ads/redexgen/X/kL;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89880
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0I()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89881
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89882
    monitor-exit p0

    return-void

    .line 89883
    :catch_1
    move-exception v1

    .line 89884
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 89885
    .end local v0    # "span":Lcom/facebook/ads/redexgen/X/kL;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local v4    # "contentLength":J
    .end local p2    # null:J
    .end local p3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7A()J
    .locals 2

    monitor-enter p0

    .line 89886
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89887
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 89888
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7B(Ljava/lang/String;JJ)J
    .locals 15

    move-wide/from16 v11, p2

    monitor-enter p0

    .line 89889
    const-wide/16 v1, -0x1

    cmp-long v0, p4, v1

    if-nez v0, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    .line 89890
    .local v0, "endPosition":J
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 89891
    const-wide v5, 0x7fffffffffffffffL

    .line 89892
    .end local v0    # "endPosition":J
    .local v9, "endPosition":J
    .local v0, "currentPosition":J
    :cond_0
    const-wide/16 v3, 0x0

    .line 89893
    .end local v0    # "currentPosition":J
    .local v11, "currentPosition":J
    .local v13, "cachedBytes":J
    :goto_1
    cmp-long v0, v11, v5

    if-gez v0, :cond_3

    .line 89894
    sub-long v13, v5, v11

    .line 89895
    .local p0, "maxRemainingLength":J
    move-object v9, p0

    :try_start_0
    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/kM;->A7C(Ljava/lang/String;JJ)J

    move-result-wide v1

    .line 89896
    .local v0, "blockLength":J
    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    goto :goto_2

    .line 89897
    :cond_1
    neg-long v1, v1

    goto :goto_3

    .line 89898
    :goto_2
    add-long/2addr v3, v1

    .line 89899
    :goto_3
    add-long/2addr v11, v1

    .line 89900
    .end local v0    # "blockLength":J
    .end local p0    # "maxRemainingLength":J
    goto :goto_1

    .line 89901
    :cond_2
    add-long v5, v11, p4

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89902
    .end local v9    # "endPosition":J
    .end local v11    # "currentPosition":J
    .end local v13    # "cachedBytes":J
    .end local p2    # null:J
    .end local p3
    .end local p4    # null:J
    .end local p6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89903
    .restart local v9    # "endPosition":J
    .restart local v11    # "currentPosition":J
    .restart local v13    # "cachedBytes":J
    .restart local p3
    .restart local p4    # null:J
    .restart local p6
    :cond_3
    monitor-exit p0

    return-wide v3
.end method

.method public final declared-synchronized A7C(Ljava/lang/String;JJ)J
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    monitor-enter p0

    .line 89904
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89905
    const-wide/16 v1, -0x1

    cmp-long v0, p4, v1

    if-nez v0, :cond_1

    .line 89906
    const-wide p4, 0x7fffffffffffffffL

    .line 89907
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    .line 89908
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Mg;->A02(JJ)J

    move-result-wide v0

    goto :goto_1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :cond_2
    neg-long v0, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .line 89909
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7S(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mk;
    .locals 1

    monitor-enter p0

    .line 89910
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/kN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89912
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AHg(Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 3

    monitor-enter p0

    .line 89913
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Mg;

    .line 89915
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mg;->A07(J)V

    .line 89916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mg;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0K(Ljava/lang/String;)V

    .line 89917
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89918
    monitor-exit p0

    return-void

    .line 89919
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/MZ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AIU(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 89920
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89921
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/kM;->A0I(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MZ;

    .line 89922
    .local v1, "span":Lcom/facebook/ads/redexgen/X/MZ;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kM;->A0A(Lcom/facebook/ads/redexgen/X/MZ;)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89923
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :cond_1
    monitor-exit p0

    return-void

    .line 89924
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AIV(Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 1

    monitor-enter p0

    .line 89925
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89926
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kM;->A0A(Lcom/facebook/ads/redexgen/X/MZ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89927
    monitor-exit p0

    return-void

    .line 89928
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/MZ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AK8(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89929
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89930
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A08()V

    .line 89931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    move-object v5, p1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v2

    .line 89932
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89933
    move-wide v8, p4

    move-wide v6, p2

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/Mg;->A0B(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kM;->A0F(Ljava/io/File;)V

    .line 89936
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A06()V

    .line 89937
    .end local v8
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kM;->A04:Lcom/facebook/ads/redexgen/X/kS;

    move-object v4, p0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/kS;->AG5(Lcom/facebook/ads/redexgen/X/MP;Ljava/lang/String;JJ)V

    .line 89938
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kM;->A07:Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kM;->A09:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89939
    .local v2, "cacheSubDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89940
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/kM;->A0F(Ljava/io/File;)V

    .line 89941
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 89942
    .local v6, "lastTouchTimestamp":J
    iget v5, v2, Lcom/facebook/ads/redexgen/X/Mg;->A01:I

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/kL;->A05(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89943
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local v2    # "cacheSubDir":Ljava/io/File;
    .end local v6    # "lastTouchTimestamp":J
    .end local v9
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    .end local p2    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AKA(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/MN;)Lcom/facebook/ads/redexgen/X/MZ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89944
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89945
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A08()V

    .line 89946
    :goto_1
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/kM;->AKB(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/MN;)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    .line 89947
    .local v0, "span":Lcom/facebook/ads/redexgen/X/MZ;
    if-eqz v0, :cond_1

    goto :goto_2

    .line 89948
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89949
    :goto_2
    monitor-exit p0

    return-object v0

    .line 89950
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/MN;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AKB(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/MN;)Lcom/facebook/ads/redexgen/X/kL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/MM;
        }
    .end annotation

    monitor-enter p0

    .line 89951
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A03:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89952
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kM;->A08()V

    .line 89953
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/kM;->A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v3

    .line 89954
    .local v0, "span":Lcom/facebook/ads/redexgen/X/kL;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    if-eqz v0, :cond_1

    .line 89955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    .line 89956
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v2

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/MZ;->A00:J

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/Mg;->A05(Lcom/facebook/ads/redexgen/X/kL;JZ)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    .line 89957
    .local v1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/kL;
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/kM;->A0E(Lcom/facebook/ads/redexgen/X/kL;Lcom/facebook/ads/redexgen/X/MZ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89958
    monitor-exit p0

    return-object v0

    .line 89959
    .end local v1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/kL;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/kM;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kM;->A06:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v2

    .line 89960
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/facebook/ads/redexgen/X/Mg;->A0C(JJ)Z

    move-result v0

    if-eqz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89961
    monitor-exit p0

    return-object v3

    .line 89962
    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 89963
    .end local v0    # "span":Lcom/facebook/ads/redexgen/X/kL;
    .end local v1    # "cachedContent":Lcom/facebook/ads/redexgen/X/Mg;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/MN;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

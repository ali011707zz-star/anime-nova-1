.class public abstract Lcom/facebook/ads/redexgen/X/c4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2664
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e7juOHCMVCS96MucXvvyM5upzpE0CxcL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Axk6XM18YFtFlcC0tEdKqjogVlmemrm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CHYE97fUe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "94l1C"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pvrd7E3JtMrEOvPAC3lcGaqqDdvc2Rnk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mswd2ljSuB4EOxjza27Iz7krcpdQKmDN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x2gmwPWroRNX0socjzMaFBH0Y3mBhUE3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1dJrelJWCcDuEHtNsp3IaM8Oqex3ZZ7a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c4;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/c7;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/c3;
    .locals 21

    .line 78754
    move-object/from16 v6, p0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 78755
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v18

    .line 78756
    .local v1, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    invoke-static/range {v18 .. v18}, Lcom/facebook/ads/redexgen/X/bu;->A00(Lcom/facebook/ads/redexgen/X/NR;)F

    move-result v0

    float-to-double v0, v0

    .line 78757
    .local v9, "aspectRatio":D
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NR;->A0T()Z

    move-result v11

    .line 78758
    .local v11, "isWatchAndBrowse":Z
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A00()I

    move-result v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A01()I

    move-result v2

    .line 78759
    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A06(IID)Z

    move-result v4

    .line 78760
    .local v12, "renderFullscreen":Z
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v12

    .line 78761
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v13

    .line 78762
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v2

    .line 78763
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 78764
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v17

    .line 78765
    const-string v14, ""

    invoke-static/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v9

    .line 78766
    .local v13, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v2, 0x1

    xor-int/2addr v8, v2

    .line 78767
    .local v14, "isVideo":Z
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78768
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v10

    sget-object v7, Lcom/facebook/ads/redexgen/X/c4;->A00:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v7, v2

    const/4 v2, 0x6

    aget-object v7, v7, v2

    const/16 v2, 0x1b

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_a

    .line 78769
    sget-object v7, Lcom/facebook/ads/redexgen/X/c4;->A00:[Ljava/lang/String;

    const-string v3, "oHCvC4ERmXYMU8sW9KKIPv7pnY2wXb01"

    const/4 v2, 0x5

    aput-object v3, v7, v2

    const-string v3, "G3HUaMks2xBdg2z9mSbIts1gYwx1OgmU"

    const/4 v2, 0x7

    aput-object v3, v7, v2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v7

    .line 78770
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    .line 78771
    invoke-interface {v7, v3, v2, v8}, Lcom/facebook/ads/redexgen/X/VM;->AKn(Landroid/view/View;Ljava/lang/String;Z)V

    .line 78772
    :cond_0
    if-eqz v11, :cond_3

    instance-of v2, v9, Lcom/facebook/ads/redexgen/X/84;

    if-eqz v2, :cond_3

    .line 78773
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/c4;->A01(Lcom/facebook/ads/redexgen/X/c7;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78774
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Ji;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V

    .line 78775
    .local v2, "layout":Lcom/facebook/ads/redexgen/X/c3;
    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :goto_0
    if-eqz p2, :cond_1

    .line 78776
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v19

    .line 78777
    move-wide/from16 v20, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v22}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 78778
    :cond_1
    return-object v3

    .line 78779
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_2
    new-instance v3, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    goto :goto_0

    .line 78780
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_3
    if-eqz v8, :cond_4

    .line 78781
    new-instance v3, Lcom/facebook/ads/redexgen/X/6H;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/6H;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    goto :goto_0

    .line 78782
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_4
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78783
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Kc;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V

    return-object v0

    .line 78784
    :cond_5
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NQ;->A1j()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78785
    new-instance v3, Lcom/facebook/ads/redexgen/X/6K;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    goto :goto_0

    .line 78786
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Up;->A2i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78787
    new-instance v3, Lcom/facebook/ads/redexgen/X/6J;

    invoke-direct {v3, v6, v4}, Lcom/facebook/ads/redexgen/X/6J;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    goto :goto_0

    .line 78788
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_7
    if-eqz v4, :cond_9

    .line 78789
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/c7;->A00()I

    move-result v3

    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    const/4 v5, 0x1

    .line 78790
    .local v2, "isInLandscape":Z
    :cond_8
    new-instance v3, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v3, v6, v5}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 78791
    .local v2, "layout":Lcom/facebook/ads/redexgen/X/c3;
    goto :goto_0

    .line 78792
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/c3;
    :cond_9
    nop

    .line 78793
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A04(D)Z

    move-result v2

    new-instance v3, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v3, v6, v2}, Lcom/facebook/ads/redexgen/X/KU;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/c7;)Z
    .locals 3

    .line 78794
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78795
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/c4;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/c4;->A00:[Ljava/lang/String;

    const-string v1, "BfXu055milBajq8QiXDIPY7ZZDWb7rZy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zfsTxDhfKJjHYbZVz1DIv6IoDbSXcVhK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 78796
    :goto_0
    return v0

    .line 78797
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

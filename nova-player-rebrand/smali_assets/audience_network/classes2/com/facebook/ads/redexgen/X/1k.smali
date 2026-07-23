.class public final Lcom/facebook/ads/redexgen/X/1k;
.super Lcom/facebook/ads/redexgen/X/AQ;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AN;,
        Lcom/facebook/ads/redexgen/X/AO;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/util/regex/Pattern;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# instance fields
.field public A00:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Meta Specific, added in D30556310"
    .end annotation
.end field

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/5i;

.field public A05:Lcom/facebook/ads/redexgen/X/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/kj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Ljava/io/InputStream;

.field public A07:Ljava/net/HttpURLConnection;

.field public A08:Z

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/5o;

.field public final A0C:Lcom/facebook/ads/redexgen/X/5o;

.field public final A0D:Ljava/lang/String;

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 114
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oHtrkf711"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OALAWpvM4V43TAH4yIQoOhxEEr6GacAE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Hh5EFVgHa3Asp8lHlYejA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RFLx7idHDwwo1808RkkCK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SJ5smVJpw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R3kqAJTnVJNs7pGyArjUElZegIjSHDR8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bae9e6aq2V8bVVKZmWDXAczRXcgESOJG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FE1YY4rUq5RhzOvKgv0QhVD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1k;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1k;->A09()V

    const/16 v2, 0x14b

    const/16 v1, 0x19

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1k;->A0I:Ljava/util/regex/Pattern;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8094
    const/4 v1, 0x0

    const/16 v0, 0x1f40

    invoke-direct {p0, v1, v0, v0}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Ljava/lang/String;II)V

    .line 8095
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8096
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;)V

    .line 8097
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8098
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p5

    move v4, p4

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;Lcom/facebook/ads/redexgen/X/kj;Z)V

    .line 8099
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;Lcom/facebook/ads/redexgen/X/kj;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/facebook/ads/redexgen/X/5o;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 8100
    .local p6, "contentTypePredicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Z)V

    .line 8101
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A00:I

    .line 8102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1k;->A0D:Ljava/lang/String;

    .line 8103
    iput p2, p0, Lcom/facebook/ads/redexgen/X/1k;->A09:I

    .line 8104
    iput p3, p0, Lcom/facebook/ads/redexgen/X/1k;->A0A:I

    .line 8105
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/1k;->A0E:Z

    .line 8106
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/1k;->A0B:Lcom/facebook/ads/redexgen/X/5o;

    .line 8107
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1k;->A05:Lcom/facebook/ads/redexgen/X/kj;

    .line 8108
    new-instance v0, Lcom/facebook/ads/redexgen/X/5o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5o;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A0C:Lcom/facebook/ads/redexgen/X/5o;

    .line 8109
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/1k;->A0F:Z

    .line 8110
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;Lcom/facebook/ads/redexgen/X/kj;ZLcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    .line 8111
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;Lcom/facebook/ads/redexgen/X/kj;Z)V

    return-void
.end method

.method private A00([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8112
    if-nez p3, :cond_0

    .line 8113
    const/4 v0, 0x0

    return v0

    .line 8114
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    .line 8115
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:J

    sub-long/2addr v0, v2

    .line 8116
    .local v0, "bytesRemaining":J
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 8117
    return v5

    .line 8118
    :cond_1
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 8119
    .end local v0    # "bytesRemaining":J
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 8120
    .local v0, "read":I
    if-ne v4, v5, :cond_3

    .line 8121
    return v5

    .line 8122
    :cond_3
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:J

    .line 8123
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 8124
    return v4
.end method

.method public static A01(Ljava/net/HttpURLConnection;)J
    .locals 12
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 8125
    const-wide/16 v1, -0x1

    .line 8126
    .local v0, "contentLength":J
    const/16 v4, 0x24

    const/16 v3, 0xe

    const/16 v0, 0x6c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 8127
    .local v2, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v4, 0x147

    const/4 v3, 0x1

    const/16 v0, 0x64

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x3f

    const/16 v3, 0x15

    const/16 v0, 0x2a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_0

    .line 8128
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 8129
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8130
    .local v3, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc5

    const/16 v3, 0x1b

    const/16 v0, 0x3a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 8131
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/16 v4, 0x32

    const/16 v3, 0xd

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8132
    .local v3, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8133
    sget-object v0, Lcom/facebook/ads/redexgen/X/1k;->A0I:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 8134
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8135
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 8136
    .local v7, "contentLengthFromRange":J
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-gez v0, :cond_1

    .line 8137
    move-wide v1, v3

    goto :goto_1

    .line 8138
    :cond_1
    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 8139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x78

    const/16 v5, 0x16

    const/16 v0, 0x20

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v9, 0x148

    const/4 v5, 0x3

    const/4 v0, 0x2

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 8140
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8141
    .local v7, "e":Ljava/lang/NumberFormatException;
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xe0

    const/16 v3, 0x1a

    const/16 v0, 0x15

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 8142
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    return-wide v1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1k;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/5i;)Ljava/net/HttpURLConnection;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8143
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8144
    .local v1, "url":Ljava/net/URL;
    iget v11, v12, Lcom/facebook/ads/redexgen/X/5i;->A01:I

    .line 8145
    .local v13, "httpMethod":I
    iget-object v10, v12, Lcom/facebook/ads/redexgen/X/5i;->A0A:[B

    .line 8146
    .local v14, "httpBody":[B
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    move-wide/from16 v28, v0

    .line 8147
    .local v9, "position":J
    iget-wide v15, v12, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    .line 8148
    .local v6, "length":J
    const/4 v9, 0x1

    invoke-virtual {v12, v9}, Lcom/facebook/ads/redexgen/X/5i;->A06(I)Z

    move-result v25

    .line 8149
    .local v16, "allowGzip":Z
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/1k;->A0E:Z

    if-nez v0, :cond_1

    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/1k;->A0F:Z

    if-nez v0, :cond_1

    .line 8150
    const/16 v26, 0x1

    iget-object v4, v12, Lcom/facebook/ads/redexgen/X/5i;->A09:Ljava/util/Map;

    move-object/from16 v17, p0

    sget-object v3, Lcom/facebook/ads/redexgen/X/1k;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/1k;->A0H:[Ljava/lang/String;

    const-string v1, "MDuHDm4cbdnEm3n4Ii2p7N8pDyl3ksX4"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .end local v6    # "length":J
    .local v17, "length":J
    .end local v9    # "position":J
    .local v20, "position":J
    move-wide/from16 v21, v28

    move-wide/from16 v23, v15

    move-object/from16 v27, v4

    move-object/from16 v18, v2

    move/from16 v19, v11

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v27}, Lcom/facebook/ads/redexgen/X/1k;->A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 8151
    .end local v17    # "length":J
    .end local v20    # "position":J
    .restart local v6    # "length":J
    .restart local v9    # "position":J
    .end local v6    # "length":J
    .end local v9    # "position":J
    .restart local v17    # "length":J
    .restart local v20    # "position":J
    :cond_1
    const/4 v1, 0x0

    .line 8152
    .end local v1    # "url":Ljava/net/URL;
    .local v0, "redirectCount":I
    .local v10, "url":Ljava/net/URL;
    :goto_0
    add-int/lit8 v8, v1, 0x1

    .end local v0    # "redirectCount":I
    .local v9, "redirectCount":I
    const/16 v0, 0x14

    if-gt v1, v0, :cond_9

    .line 8153
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/5i;->A09:Ljava/util/Map;

    .line 8154
    const/16 v26, 0x0

    move-object/from16 v17, p0

    .end local v9    # "redirectCount":I
    .local v23, "redirectCount":I
    move-object v7, v2

    .end local v10    # "url":Ljava/net/URL;
    .local v24, "url":Ljava/net/URL;
    move-wide/from16 v21, v28

    move-wide/from16 v23, v15

    move-object/from16 v27, v0

    move-object/from16 v18, v2

    move/from16 v19, v11

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v27}, Lcom/facebook/ads/redexgen/X/1k;->A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 8155
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 8156
    .local v1, "responseCode":I
    const/16 v2, 0x8e

    const/16 v1, 0x8

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8157
    .local v2, "location":Ljava/lang/String;
    const/16 v4, 0x12f

    const/16 v3, 0x12d

    const/16 v2, 0x12c

    const/16 v1, 0x12e

    if-eq v11, v9, :cond_2

    const/4 v0, 0x3

    if-ne v11, v0, :cond_4

    :cond_2
    if-eq v6, v2, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v1, :cond_3

    if-eq v6, v4, :cond_3

    const/16 v0, 0x133

    if-eq v6, v0, :cond_3

    const/16 v0, 0x134

    if-ne v6, v0, :cond_4

    .line 8158
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4
    :cond_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 8159
    invoke-direct {v13, v7, v5, v12}, Lcom/facebook/ads/redexgen/X/1k;->A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;)Ljava/net/URL;

    move-result-object v2

    .line 8160
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "responseCode":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v4
    .restart local v10    # "url":Ljava/net/URL;
    :goto_1
    move v1, v8

    goto :goto_0

    .line 8161
    :cond_4
    const/4 v0, 0x2

    if-ne v11, v0, :cond_8

    if-eq v6, v2, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v1, :cond_5

    if-ne v6, v4, :cond_8

    .line 8162
    :cond_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 8163
    iget-boolean v0, v13, Lcom/facebook/ads/redexgen/X/1k;->A0F:Z

    if-eqz v0, :cond_7

    if-ne v6, v1, :cond_7

    const/4 v0, 0x1

    .line 8164
    .local v3, "shouldKeepPost":Z
    :goto_2
    if-nez v0, :cond_6

    .line 8165
    const/4 v11, 0x1

    .line 8166
    const/4 v10, 0x0

    .line 8167
    .end local v24
    .local v4, "url":Ljava/net/URL;
    :cond_6
    invoke-direct {v13, v7, v5, v12}, Lcom/facebook/ads/redexgen/X/1k;->A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;)Ljava/net/URL;

    move-result-object v2

    .line 8168
    .end local v4    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    goto :goto_1

    .line 8169
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 8170
    .end local v24
    .restart local v4    # "url":Ljava/net/URL;
    :cond_8
    return-object v14

    .line 8171
    .end local v23    # "redirectCount":I
    .restart local v9    # "redirectCount":I
    .end local v9    # "redirectCount":I
    .restart local v23    # "redirectCount":I
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb1

    const/16 v1, 0x14

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v23    # "redirectCount":I
    .local v3, "redirectCount":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/NoRouteToHostException;

    invoke-direct {v2, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v2, v12, v1, v9}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0
.end method

.method private final A04(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8172
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private A05(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Meta Specific, added in D4001689 for \'Handling loopback Address\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8173
    .local p14, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, p0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8174
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A06(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 8175
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A09:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8176
    iget v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0A:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8178
    .local v4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0B:Lcom/facebook/ads/redexgen/X/5o;

    if-eqz v0, :cond_0

    .line 8179
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0B:Lcom/facebook/ads/redexgen/X/5o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5o;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8180
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0C:Lcom/facebook/ads/redexgen/X/5o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5o;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8181
    move-object/from16 v0, p10

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8182
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8183
    .local p1, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8184
    .end local p1    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 8185
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1k;->A04(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_0

    .line 8186
    :cond_2
    invoke-static {p4, p5, p6, p7}, Lcom/facebook/ads/redexgen/X/5p;->A03(JJ)Ljava/lang/String;

    move-result-object v5

    .line 8187
    .local p0, "rangeHeader":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 8188
    const/16 v2, 0xac

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8189
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0D:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 8190
    const/16 v2, 0x13d

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/1k;->A0D:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8191
    :cond_4
    if-eqz p8, :cond_7

    const/16 v2, 0x1ea

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/4 v2, 0x5

    const/16 v1, 0xf

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8192
    invoke-virtual {v3, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 8193
    if-eqz p3, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 8194
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/5i;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 8195
    if-eqz p3, :cond_5

    .line 8196
    array-length v0, p3

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 8197
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 8198
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 8199
    .local p2, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 8200
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 8201
    .end local p2    # "os":Ljava/io/OutputStream;
    :goto_4
    return-object v3

    .line 8202
    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_4

    .line 8203
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 8204
    :cond_7
    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private final A06(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8205
    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private A07(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;)Ljava/net/URL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p5;
        }
    .end annotation

    .line 8206
    const/4 v4, 0x1

    const/16 v3, 0x7d1

    if-eqz p2, :cond_4

    .line 8207
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8208
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 8209
    .local v3, "protocol":Ljava/lang/String;
    const/16 v2, 0x1f2

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x1ee

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8210
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A0E:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8211
    :cond_1
    return-object v5

    .line 8212
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x24

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8213
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8214
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11e

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8215
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 8216
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8217
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const/16 v2, 0x96

    const/16 v1, 0x16

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v1, p3, v3, v4}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0
.end method

.method private A08()V
    .locals 5

    .line 8218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 8219
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8220
    :catch_0
    move-exception v4

    .line 8221
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfa

    const/16 v1, 0x24

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    .line 8223
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x213

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1k;->A0G:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x9t
        -0xet
        -0x5dt
        0x7et
        -0x59t
        -0x37t
        -0x37t
        -0x35t
        -0x2at
        -0x26t
        -0x6dt
        -0x55t
        -0x2ct
        -0x37t
        -0x2bt
        -0x36t
        -0x31t
        -0x2ct
        -0x33t
        -0x5at
        -0x2et
        -0x2ft
        -0x29t
        -0x38t
        -0x2ft
        -0x29t
        -0x70t
        -0x58t
        -0x2ft
        -0x3at
        -0x2et
        -0x39t
        -0x34t
        -0x2ft
        -0x36t
        -0x41t
        -0x15t
        -0x16t
        -0x10t
        -0x1ft
        -0x16t
        -0x10t
        -0x57t
        -0x38t
        -0x1ft
        -0x16t
        -0x1dt
        -0x10t
        -0x1ct
        -0x71t
        -0x45t
        -0x46t
        -0x40t
        -0x4ft
        -0x46t
        -0x40t
        0x79t
        -0x62t
        -0x53t
        -0x46t
        -0x4dt
        -0x4ft
        0x7et
        -0x61t
        -0x60t
        -0x65t
        -0x51t
        -0x5at
        -0x52t
        -0x7et
        -0x52t
        -0x52t
        -0x56t
        0x7et
        -0x65t
        -0x52t
        -0x65t
        -0x73t
        -0x57t
        -0x51t
        -0x54t
        -0x63t
        -0x61t
        -0x43t
        -0x1et
        -0x14t
        -0x26t
        -0x1bt
        -0x1bt
        -0x18t
        -0x10t
        -0x22t
        -0x23t
        -0x67t
        -0x24t
        -0x15t
        -0x18t
        -0x14t
        -0x14t
        -0x5at
        -0x17t
        -0x15t
        -0x18t
        -0x13t
        -0x18t
        -0x24t
        -0x18t
        -0x1bt
        -0x67t
        -0x15t
        -0x22t
        -0x23t
        -0x1et
        -0x15t
        -0x22t
        -0x24t
        -0x13t
        -0x67t
        -0x5ft
        0x79t
        -0x62t
        -0x6dt
        -0x61t
        -0x62t
        -0x5dt
        -0x67t
        -0x5dt
        -0x5ct
        -0x6bt
        -0x62t
        -0x5ct
        0x50t
        -0x68t
        -0x6bt
        -0x6ft
        -0x6ct
        -0x6bt
        -0x5et
        -0x5dt
        0x50t
        -0x75t
        -0x7at
        -0x57t
        -0x63t
        -0x65t
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        -0x35t
        -0xet
        -0x17t
        -0x17t
        -0x63t
        -0x17t
        -0x14t
        -0x20t
        -0x22t
        -0xft
        -0x1at
        -0x14t
        -0x15t
        -0x63t
        -0x11t
        -0x1et
        -0x1ft
        -0x1at
        -0x11t
        -0x1et
        -0x20t
        -0xft
        -0x2bt
        -0x1ct
        -0xft
        -0x16t
        -0x18t
        -0x38t
        -0x1dt
        -0x1dt
        -0x6ct
        -0x1ft
        -0x2bt
        -0x1et
        -0x13t
        -0x6ct
        -0x1at
        -0x27t
        -0x28t
        -0x23t
        -0x1at
        -0x27t
        -0x29t
        -0x18t
        -0x19t
        -0x52t
        -0x6ct
        -0x61t
        -0x48t
        -0x51t
        -0x3et
        -0x46t
        -0x51t
        -0x53t
        -0x42t
        -0x51t
        -0x52t
        0x6at
        -0x73t
        -0x47t
        -0x48t
        -0x42t
        -0x51t
        -0x48t
        -0x42t
        0x77t
        -0x6at
        -0x51t
        -0x48t
        -0x4ft
        -0x42t
        -0x4et
        0x6at
        -0x5bt
        0x7at
        -0x6dt
        -0x76t
        -0x63t
        -0x6bt
        -0x76t
        -0x78t
        -0x67t
        -0x76t
        -0x77t
        0x45t
        0x68t
        -0x6ct
        -0x6dt
        -0x67t
        -0x76t
        -0x6dt
        -0x67t
        0x52t
        0x77t
        -0x7at
        -0x6dt
        -0x74t
        -0x76t
        0x45t
        -0x80t
        0x71t
        -0x76t
        -0x7ft
        -0x6ct
        -0x74t
        -0x7ft
        0x7ft
        -0x70t
        -0x7ft
        -0x80t
        0x3ct
        -0x7ft
        -0x72t
        -0x72t
        -0x75t
        -0x72t
        0x3ct
        -0x6dt
        -0x7ct
        -0x7bt
        -0x78t
        -0x7ft
        0x3ct
        -0x80t
        -0x7bt
        -0x71t
        0x7ft
        -0x75t
        -0x76t
        -0x76t
        -0x7ft
        0x7ft
        -0x70t
        -0x7bt
        -0x76t
        -0x7dt
        -0x64t
        -0x4bt
        -0x46t
        -0x44t
        -0x49t
        -0x49t
        -0x4at
        -0x47t
        -0x45t
        -0x54t
        -0x55t
        0x67t
        -0x49t
        -0x47t
        -0x4at
        -0x45t
        -0x4at
        -0x56t
        -0x4at
        -0x4dt
        0x67t
        -0x47t
        -0x54t
        -0x55t
        -0x50t
        -0x47t
        -0x54t
        -0x56t
        -0x45t
        -0x7ft
        0x67t
        -0x68t
        -0x4at
        -0x58t
        -0x4bt
        0x70t
        -0x7ct
        -0x56t
        -0x58t
        -0x4ft
        -0x49t
        -0x2ft
        0x6ft
        0x32t
        0x6dt
        0x74t
        0x78t
        -0x71t
        -0x76t
        0x7bt
        -0x77t
        0x36t
        0x3et
        0x72t
        0x7at
        0x41t
        0x3ft
        0x43t
        0x3et
        0x72t
        0x7at
        0x41t
        0x3ft
        0x45t
        0x3et
        0x72t
        0x7at
        0x41t
        0x3ft
        0x3at
        -0x7et
        -0x72t
        -0x74t
        0x4dt
        -0x80t
        -0x73t
        -0x7dt
        -0x6ft
        -0x72t
        -0x78t
        -0x7dt
        0x4dt
        -0x72t
        -0x76t
        -0x79t
        -0x6dt
        -0x6dt
        -0x71t
        0x4dt
        -0x78t
        -0x73t
        -0x6dt
        -0x7ct
        -0x6ft
        -0x73t
        -0x80t
        -0x75t
        0x4dt
        -0x79t
        -0x6dt
        -0x6dt
        -0x71t
        0x4dt
        0x67t
        -0x6dt
        -0x6dt
        -0x71t
        0x73t
        -0x6ft
        -0x80t
        -0x73t
        -0x6et
        -0x71t
        -0x72t
        -0x6ft
        -0x6dt
        0x43t
        0x62t
        -0x79t
        -0x6ct
        -0x73t
        -0x76t
        -0x7ct
        -0x7dt
        0x68t
        -0x73t
        -0x71t
        -0x6ct
        -0x6dt
        0x72t
        -0x6dt
        -0x6ft
        -0x7ct
        -0x80t
        -0x74t
        -0x49t
        -0x3dt
        -0x3ft
        -0x7et
        -0x4bt
        -0x3et
        -0x48t
        -0x3at
        -0x3dt
        -0x43t
        -0x48t
        -0x7et
        -0x3dt
        -0x41t
        -0x44t
        -0x38t
        -0x38t
        -0x3ct
        -0x7et
        -0x43t
        -0x3et
        -0x38t
        -0x47t
        -0x3at
        -0x3et
        -0x4bt
        -0x40t
        -0x7et
        -0x44t
        -0x38t
        -0x38t
        -0x3ct
        -0x7et
        -0x64t
        -0x38t
        -0x38t
        -0x3ct
        -0x58t
        -0x3at
        -0x4bt
        -0x3et
        -0x39t
        -0x3ct
        -0x3dt
        -0x3at
        -0x38t
        0x78t
        -0x66t
        -0x43t
        -0x34t
        -0x47t
        -0x48t
        -0x60t
        -0x47t
        -0x3et
        -0x45t
        -0x38t
        -0x44t
        -0x63t
        -0x3et
        -0x3ct
        -0x37t
        -0x38t
        -0x59t
        -0x38t
        -0x3at
        -0x47t
        -0x4bt
        -0x3ft
        -0x21t
        -0xet
        -0x1ft
        -0x18t
        -0x1dt
        -0x11t
        -0x11t
        -0x15t
        -0x39t
        -0x2dt
        -0x2dt
        -0x31t
        -0x2et
        0x7ct
        0x77t
        0x78t
        -0x7ft
        -0x79t
        0x7ct
        -0x79t
        -0x74t
        0x2t
        -0x5t
        -0xet
        0x5t
        -0x3t
        -0xet
        -0x10t
        0x1t
        -0xet
        -0xft
        -0x2et
        -0x5t
        -0xft
        -0x24t
        -0xdt
        -0x2at
        -0x5t
        -0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method private A0A(JLcom/facebook/ads/redexgen/X/5i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8224
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-nez v0, :cond_0

    .line 8225
    return-void

    .line 8226
    :cond_0
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 8227
    .local v2, "skipBuffer":[B
    :goto_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_3

    .line 8228
    array-length v0, v4

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 8229
    .local v4, "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 8230
    .local v3, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 8231
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    .line 8232
    int-to-long v0, v2

    sub-long/2addr p1, v0

    .line 8233
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 8234
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    goto :goto_0

    .line 8235
    .restart local v3    # "read":I
    .restart local v4    # "readLength":I
    :cond_1
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, p3, v1, v3}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8236
    :cond_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v2, p3, v1, v3}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8237
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    :cond_3
    return-void
.end method

.method public static A0B(Ljava/net/HttpURLConnection;J)V
    .locals 5

    .line 8238
    if-eqz p0, :cond_0

    sget v4, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v3, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/1k;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1k;->A0H:[Ljava/lang/String;

    const-string v1, "Vr7TSbIm52LxE4LVc9eYFTM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lt v4, v3, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x14

    if-le v1, v0, :cond_1

    .line 8239
    :cond_0
    return-void

    .line 8240
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 8241
    .local v0, "inputStream":Ljava/io/InputStream;
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_2

    .line 8242
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 8243
    return-void

    .line 8244
    :cond_2
    const-wide/16 v1, 0x800

    cmp-long v0, p1, v1

    if-gtz v0, :cond_3

    .line 8245
    return-void

    .line 8246
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8247
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x164

    const/16 v1, 0x41

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v2, 0x1a5

    const/16 v1, 0x45

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 8248
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8249
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 8250
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/16 v2, 0x1ff

    const/16 v1, 0x14

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8251
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8252
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8253
    :catch_0
    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Ljava/net/HttpURLConnection;)Z
    .locals 3

    .line 8254
    const/16 v2, 0x14

    const/16 v1, 0x10

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8255
    .local v0, "contentEncoding":Ljava/lang/String;
    const/16 v2, 0x1ea

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A0I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8256
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8257
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A0C:Lcom/facebook/ads/redexgen/X/5o;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/5o;->A01(Ljava/lang/String;Ljava/lang/String;)V

    .line 8259
    return-void
.end method

.method public final A8t()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 8260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 8261
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oX;->A04()Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    return-object v0

    .line 8262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AN;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 8263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 16
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "customizations: (1) loop commented \'Append headers from data spec\' (D6487388,D6506073) (2) ischunkedTransfer (D15078204)"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p5;
        }
    .end annotation

    .line 8264
    move-object/from16 v5, p0

    move-object v5, v5

    move-object/from16 v14, p1

    iput-object v14, v5, Lcom/facebook/ads/redexgen/X/1k;->A04:Lcom/facebook/ads/redexgen/X/5i;

    .line 8265
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Lcom/facebook/ads/redexgen/X/1k;->A02:J

    .line 8266
    iput-wide v1, v5, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    .line 8267
    invoke-virtual {v5, v14}, Lcom/facebook/ads/redexgen/X/AQ;->A0G(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8268
    iget-object v0, v14, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    if-eqz v0, :cond_0

    .line 8269
    iget-object v0, v14, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ML;->A0P:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8270
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A0I(Ljava/lang/String;Ljava/lang/String;)V

    .line 8271
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 8272
    :cond_0
    :try_start_0
    invoke-direct {v5, v14}, Lcom/facebook/ads/redexgen/X/1k;->A03(Lcom/facebook/ads/redexgen/X/5i;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    .line 8273
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    .line 8274
    .local v10, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    .line 8275
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 8276
    .local v4, "responseMessage":Ljava/lang/String;
    iget v6, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    const/16 v4, 0x32

    const/16 v3, 0xd

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0xc8

    const-wide/16 v3, -0x1

    if-lt v6, v9, :cond_1

    iget v7, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    const/16 v6, 0x12b

    if-le v7, v6, :cond_6

    .line 8277
    .end local v0
    .end local v2
    .end local v5
    .end local v7
    .end local v8
    :cond_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 8278
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v1, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    const/16 v6, 0x1a0

    if-ne v1, v6, :cond_3

    .line 8279
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5p;->A00(Ljava/lang/String;)J

    move-result-wide v9

    .line 8280
    .local v6, "documentSize":J
    iget-wide v0, v14, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    .line 8281
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    .line 8282
    invoke-virtual {v5, v14}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8283
    iget-wide v1, v14, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    iget-wide v0, v14, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    :goto_1
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 8284
    .end local v6    # "documentSize":J
    :cond_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 8285
    .local v11, "errorStream":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A1F(Ljava/io/InputStream;)[B

    move-result-object v15

    goto :goto_2

    :cond_4
    sget-object v15, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    goto :goto_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8286
    .end local v0
    .local v0, "e":Ljava/io/IOException;
    :catch_0
    sget-object v15, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    .line 8287
    .local v0, "errorResponseBody":[B
    :goto_2
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8288
    iget v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    if-ne v0, v6, :cond_5

    .line 8289
    const/16 v0, 0x7d8

    new-instance v12, Lcom/facebook/ads/redexgen/X/5b;

    invoke-direct {v12, v0}, Lcom/facebook/ads/redexgen/X/5b;-><init>(I)V

    .line 8290
    .local v5, "cause":Ljava/io/IOException;
    :goto_3
    new-instance v9, Lcom/facebook/ads/redexgen/X/AK;

    iget v10, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    invoke-direct/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/AK;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/5i;[B)V

    throw v9

    .line 8291
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 8292
    :cond_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 8293
    .local v8, "contentType":Ljava/lang/String;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/1k;->A05:Lcom/facebook/ads/redexgen/X/kj;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/1k;->A05:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v6, v7}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 8294
    :cond_7
    iget v6, v5, Lcom/facebook/ads/redexgen/X/1k;->A01:I

    if-ne v6, v9, :cond_8

    iget-wide v6, v14, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    cmp-long v9, v6, v1

    if-eqz v9, :cond_8

    iget-wide v1, v14, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    .line 8295
    .local v2, "bytesToSkip":J
    .local v0, "isChunkedTransfer":Z
    :cond_8
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/1k;->A0C(Ljava/net/HttpURLConnection;)Z

    move-result v11

    .line 8296
    .local v7, "isCompressed":Z
    if-nez v11, :cond_b

    .line 8297
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/1k;->A01(Ljava/net/HttpURLConnection;)J

    move-result-wide v9

    .line 8298
    .local v13, "contentLength":J
    cmp-long v6, v9, v3

    .line 8299
    iget-wide v6, v14, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v9, v6, v3

    if-eqz v9, :cond_9

    .line 8300
    iget-wide v3, v14, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    .line 8301
    .end local v0    # "isChunkedTransfer":Z
    .local v5, "isChunkedTransfer":Z
    :goto_4
    const/16 v3, 0x7d0

    goto :goto_5

    .line 8302
    :cond_9
    const/16 v9, 0x24

    const/16 v7, 0xe

    const/16 v6, 0x6c

    invoke-static {v9, v7, v6}, Lcom/facebook/ads/redexgen/X/1k;->A02(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8303
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8304
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/5p;->A01(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 8305
    .end local v13    # "contentLength":J
    .local v5, "contentLength":J
    cmp-long v0, v6, v3

    if-eqz v0, :cond_a

    sub-long v3, v6, v1

    :cond_a
    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    goto :goto_4

    .line 8306
    :cond_b
    iget-wide v3, v14, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    goto :goto_4

    .line 8307
    :goto_5
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    .line 8308
    if-eqz v11, :cond_c

    .line 8309
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8310
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    .line 8311
    invoke-virtual {v5, v14}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8312
    :try_start_3
    invoke-direct {v5, v1, v2, v14}, Lcom/facebook/ads/redexgen/X/1k;->A0A(JLcom/facebook/ads/redexgen/X/5i;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8313
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    return-wide v0

    .line 8314
    :catch_1
    move-exception v2

    .line 8315
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8316
    instance-of v0, v2, Lcom/facebook/ads/redexgen/X/p5;

    if-eqz v0, :cond_d

    .line 8317
    check-cast v2, Lcom/facebook/ads/redexgen/X/p5;

    throw v2

    .line 8318
    :cond_d
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v2, v14, v3, v1}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8319
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 8320
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8321
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v2, v14, v3, v1}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0

    .line 8322
    :cond_e
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8323
    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v7, v14}, Lcom/facebook/ads/redexgen/X/AL;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;)V

    throw v0

    .line 8324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "responseMessage":Ljava/lang/String;
    .end local v5    # "contentLength":J
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "errorStream":Ljava/io/InputStream;
    .end local v13
    :catch_3
    move-exception v1

    .line 8325
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8326
    const/4 v0, 0x1

    invoke-static {v1, v14, v0}, Lcom/facebook/ads/redexgen/X/p5;->A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;I)Lcom/facebook/ads/redexgen/X/p5;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p5;
        }
    .end annotation

    .line 8327
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    .line 8328
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 8329
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    const-wide/16 v2, -0x1

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    .line 8330
    .local v3, "bytesRemaining":J
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A07:Ljava/net/HttpURLConnection;

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/1k;->A0B(Ljava/net/HttpURLConnection;J)V

    goto :goto_1

    .line 8331
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:J

    sub-long/2addr v2, v0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8332
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8333
    :catch_0
    move-exception v4

    .line 8334
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A04:Lcom/facebook/ads/redexgen/X/5i;

    .line 8335
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/5i;

    const/16 v2, 0x7d0

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8336
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bytesRemaining":J
    .end local v5
    :cond_1
    :goto_2
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    .line 8337
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8338
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    if-eqz v0, :cond_2

    .line 8339
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    .line 8340
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8341
    :cond_2
    return-void

    .line 8342
    :catchall_0
    move-exception v1

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/1k;->A06:Ljava/io/InputStream;

    .line 8343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A08()V

    .line 8344
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    if-eqz v0, :cond_3

    .line 8345
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/1k;->A08:Z

    .line 8346
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8347
    :cond_3
    throw v1
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/p5;
        }
    .end annotation

    .line 8348
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1k;->A00([BII)I

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8349
    :catch_0
    move-exception v2

    .line 8350
    .local v0, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A04:Lcom/facebook/ads/redexgen/X/5i;

    .line 8351
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5i;

    .line 8352
    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/p5;->A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;I)Lcom/facebook/ads/redexgen/X/p5;

    move-result-object v0

    throw v0
.end method

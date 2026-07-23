.class public final Lcom/facebook/ads/redexgen/X/kL;
.super Lcom/facebook/ads/redexgen/X/MZ;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "NON_FINAL"
    }
    value = "D54147219: For usage in Hero Simple Cache"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3154
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OfRtwvXctRBBw9gKY8TWbFYEyrfTWUJ5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "O6KpU7VzQb47vbeRDg05X09dlcjSdrsx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cGvb3Ixjw9glBryIXlKjYbTfS5Fhfs8X"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N3q9w52q7yAs4MQ92KFgaGGqaH957eGg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tjYOyBogfVGQWArOceKhNo0cgBZwypsu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xmSgRcjNSrQyzCd8Uu5cYZa5hRrGr9a8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "10tums6VyruOnAjrgpE7eJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dQkd96lx4iAtJg2k9NqdAtWwc5SxpqrB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kL;->A08()V

    const/16 v2, 0x8

    const/16 v1, 0x1d

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kL;->A02:Ljava/util/regex/Pattern;

    .line 3155
    const/16 v2, 0x25

    const/16 v1, 0x1d

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kL;->A03:Ljava/util/regex/Pattern;

    .line 3156
    const/16 v2, 0x42

    const/16 v1, 0x1e

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kL;->A04:Ljava/util/regex/Pattern;

    .line 3157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0

    .line 89629
    invoke-direct/range {p0 .. p8}, Lcom/facebook/ads/redexgen/X/MZ;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 89630
    return-void
.end method

.method public static A01(Ljava/io/File;JJLcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/kL;
    .locals 14

    .line 89631
    move-wide/from16 v12, p3

    move-wide v10, p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89632
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    move-object/from16 v1, p5

    if-nez v0, :cond_1

    .line 89633
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/kL;->A06(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Mi;)Ljava/io/File;

    move-result-object p0

    .line 89634
    .local v4, "upgradedFile":Ljava/io/File;
    if-nez p0, :cond_0

    .line 89635
    return-object v6

    .line 89636
    .end local p8
    .local v2, "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89637
    .end local p8
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/kL;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 89638
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89639
    return-object v6

    .line 89640
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89641
    .local p0, "id":I
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->A0F(I)Ljava/lang/String;

    move-result-object v7

    .line 89642
    .local p1, "key":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 89643
    return-object v6

    .line 89644
    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v0, v10, v1

    if-nez v0, :cond_4

    .line 89645
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 89646
    .end local p9
    .local v5, "length":J
    .end local p9
    .local p2, "length":J
    :cond_4
    const-wide/16 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const-string v1, "3kLuDF7WddxsAuj74YBqy147zLEiHTF0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "yBKAMqN1ItuNGOhP7OCxzG9BVSMF66iW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    cmp-long v0, v10, v4

    if-nez v0, :cond_5

    .line 89647
    return-object v6

    .line 89648
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const-string v1, "3kqdJGKw3CP8mm7UdAcKh0LFQ5WJAflS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ycjOreuQW9uSgeP7cymbjNDk2aBjdnIT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 89649
    .local p4, "position":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v1

    if-nez v0, :cond_6

    .line 89650
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 89651
    .end local p11
    .local v5, "lastTouchTimestamp":J
    .end local p11
    .local p6, "lastTouchTimestamp":J
    :cond_6
    new-instance v6, Lcom/facebook/ads/redexgen/X/kL;

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/kL;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v6

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const-string v1, "aSANG9oSWduq5GFK5NdZXfdN35yUyqYg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 89652
    .local p4, "position":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v1

    if-nez v0, :cond_6

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/io/File;JLcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/kL;
    .locals 6

    .line 89653
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, p3

    move-wide v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/kL;->A01(Ljava/io/File;JJLcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/kL;
    .locals 9

    .line 89654
    new-instance v0, Lcom/facebook/ads/redexgen/X/kL;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    move-wide v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/kL;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static A04(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/kL;
    .locals 9

    .line 89655
    new-instance v0, Lcom/facebook/ads/redexgen/X/kL;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-wide v4, p3

    move-wide v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/kL;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static A05(Ljava/io/File;IJJ)Ljava/io/File;
    .locals 4

    .line 89656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kL;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A06(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Mi;)Ljava/io/File;
    .locals 11

    .line 89657
    const/4 v4, 0x0

    .line 89658
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89659
    .local v1, "filename":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/kL;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 89660
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 89661
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89662
    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-nez v4, :cond_2

    .line 89663
    return-object v2

    .line 89664
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/kL;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 89665
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89666
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kL;->A01:[Ljava/lang/String;

    const-string v1, "SH9gvm8hJK4XlSeUgFI9DN0CGl9RiOAn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "6Y4JW5a7TLCjGmr1nVotQhjybpiv9cHJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 89667
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 89668
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Mi;->A0B(Ljava/lang/String;)I

    move-result v6

    .line 89669
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 89670
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 89671
    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/kL;->A05(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v1

    .line 89672
    .local v4, "newCacheFile":Ljava/io/File;
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89673
    return-object v2

    .line 89674
    :cond_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kL;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kL;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x5dt
        -0x15t
        -0x58t
        -0x5dt
        -0x26t
        -0x13t
        -0x1ct
        -0x1ct
        -0x52t
        -0x4ct
        -0x4ft
        -0x51t
        -0x1et
        -0x4ct
        -0x52t
        -0x1et
        -0x16t
        -0x4ft
        -0x51t
        -0x1et
        -0x4ct
        -0x52t
        -0x1et
        -0x16t
        -0x4ft
        -0x51t
        -0x1et
        -0x4ct
        -0x4t
        -0x49t
        -0x1et
        -0x4ct
        -0x15t
        -0x2t
        -0xbt
        -0x56t
        -0xdt
        -0x43t
        -0x3dt
        -0x40t
        -0x42t
        -0xft
        -0x3dt
        -0x43t
        -0xft
        -0x7t
        -0x40t
        -0x42t
        -0xft
        -0x3dt
        -0x43t
        -0xft
        -0x7t
        -0x40t
        -0x42t
        -0xft
        -0x3dt
        0xbt
        -0x39t
        -0xft
        -0x3dt
        -0x6t
        0xdt
        0x4t
        -0x47t
        -0x28t
        -0x5et
        -0x2at
        -0x22t
        -0x5bt
        -0x5dt
        -0x2at
        -0x58t
        -0x5et
        -0x2at
        -0x22t
        -0x5bt
        -0x5dt
        -0x2at
        -0x58t
        -0x5et
        -0x2at
        -0x22t
        -0x5bt
        -0x5dt
        -0x2at
        -0x58t
        -0x10t
        -0x53t
        -0x2at
        -0x58t
        -0x21t
        -0xet
        -0x17t
        -0x62t
    .end array-data
.end method


# virtual methods
.method public final A09(Ljava/io/File;J)Lcom/facebook/ads/redexgen/X/kL;
    .locals 9

    .line 89675
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 89676
    new-instance v0, Lcom/facebook/ads/redexgen/X/kL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A04:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/kL;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

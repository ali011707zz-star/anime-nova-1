.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:F

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3242
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YowUIYllSx7M6YCZVsXGshOnSOoLtc3h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cbQDhaoj6BnnjM86BUfLE0DUXcchhogH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2jGri3G66okxwB6aTtVFlcwUPMWoSDUh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oqqvnpR2rXjWIfcGmkwLVz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HP58ZBS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5FsZYBr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C83yH5O3JL7Th6ZwVIEMqTmMQGSsrvlo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iqmiLlFC0cAnJcgIyeYDmB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IS;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 98554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98555
    iput p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    .line 98556
    iput p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    .line 98557
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98559
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    .line 98560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    .line 98561
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 0

    .line 98562
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A02:[B

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A03:[Ljava/lang/String;

    const-string v1, "UBLtj7Rjkge8uoQlelG8V5Ug9TCga9yn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9YC8uwkWuRyKlQdVdfZWzcDmlZgaZ9BR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x2et
        0x22t
        0x71t
        0x74t
        0x61t
        0x56t
        0x67t
        0x6ft
        0x72t
        0x6dt
        0x70t
        0x63t
        0x6et
        0x4et
        0x63t
        0x7bt
        0x67t
        0x70t
        0x41t
        0x6dt
        0x77t
        0x6ct
        0x76t
        0x3ft
        0x43t
        0x5dt
        0x44t
        0x51t
        0xat
        0x10t
        0x53t
        0x51t
        0x40t
        0x44t
        0x45t
        0x42t
        0x55t
        0x76t
        0x42t
        0x51t
        0x5dt
        0x55t
        0x62t
        0x51t
        0x44t
        0x55t
        0xdt
    .end array-data
.end method


# virtual methods
.method public final synthetic A9a()[B
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A9b()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3E;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 98563
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 98564
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 98565
    return v5

    .line 98566
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 98567
    .end local v2
    :cond_1
    return v2

    .line 98568
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    .line 98569
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    iget v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    iget v4, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A03:[Ljava/lang/String;

    const-string v1, "brpfHyQIMc9PLpoKo97tct"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "b67853lh3a5iLFx744cZ7n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 98570
    const/16 v0, 0x11

    .line 98571
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A00(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 98572
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    add-int/2addr v1, v0

    .line 98573
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98575
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A00:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98576
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98577
    return-void
.end method

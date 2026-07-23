.class public Lcom/google/ads/interactivemedia/v3/internal/zzabd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# instance fields
.field private final zzd:Ljava/io/Writer;

.field private zze:[I

.field private zzf:I

.field private zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zza:Ljava/util/regex/Pattern;

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzb:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "\\u%04x"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzb:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzb:[Ljava/lang/String;

    const/16 v1, 0x22

    .line 2
    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 3
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 4
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 5
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 6
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 7
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 8
    aput-object v2, v0, v1

    .line 9
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzc:[Ljava/lang/String;

    const-string v1, "\\u003c"

    const/16 v2, 0x3c

    .line 10
    aput-object v1, v0, v2

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    .line 11
    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    .line 12
    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    .line 13
    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    .line 14
    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzw(I)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn:Z

    const-string v0, "out == null"

    .line 2
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn(Lcom/google/ads/interactivemedia/v3/internal/zzur;)V

    return-void
.end method

.method private final zzA(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzc:[Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzb:[Ljava/lang/String;

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    add-int/lit8 v6, v4, 0x1

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x80

    if-ge v7, v8, :cond_1

    .line 4
    aget-object v7, v0, v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_1
    const/16 v8, 0x2028

    if-ne v7, v8, :cond_2

    .line 6
    const-string v7, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v8, 0x2029

    if-ne v7, v8, :cond_4

    const-string v7, "\\u2029"

    :goto_2
    if-ge v5, v4, :cond_3

    sub-int/2addr v4, v5

    .line 5
    invoke-virtual {v1, p1, v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 6
    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v5, v6

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    if-ge v5, v3, :cond_6

    sub-int/2addr v3, v5

    .line 7
    invoke-virtual {v1, p1, v5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 8
    :cond_6
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private final zzB()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzj:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    .line 2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final zzC()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzx()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzy(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzh:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzy(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzi:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzB()V

    return-void

    .line 8
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzy(I)V

    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzB()V

    return-void
.end method

.method private final zza(IC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzw(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 3
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method private final zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzx()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 2
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    if-ne v0, p2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzB()V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 4
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 1
    :cond_3
    const-string p2, "Dangling name: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final zzw(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/2addr v0, v0

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    .line 3
    aput p1, v0, v1

    return-void
.end method

.method private final zzx()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    add-int/lit8 v0, v0, -0x1

    .line 2
    aget v0, v1, v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzy(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private final zzz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzx()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzi:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzB()V

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzy(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzA(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zze:[I

    .line 2
    aget v0, v0, v2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    return-void

    .line 2
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    .line 3
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzf:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    const/4 v0, 0x1

    const/16 v1, 0x5b

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zza(IC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0
.end method

.method public zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x5d

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0
.end method

.method public zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    const/4 v0, 0x3

    const/16 v1, 0x7b

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zza(IC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0
.end method

.method public zze()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x7d

    const/4 v2, 0x3

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzv(IIC)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0
.end method

.method public zzf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzx()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please begin an object before writing a name."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    return-object p0

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already wrote a name, expecting a value."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzg(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzA(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzh(Z)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "false"

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "true"

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzi(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_1

    const-string p1, "false"

    goto :goto_0

    :cond_1
    const-string p1, "true"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzj(D)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public zzk(J)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzl(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/math/BigDecimal;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/math/BigInteger;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    const-string v1, "-Infinity"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_6

    .line 9
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zza:Ljava/util/regex/Pattern;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String created by "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid JSON number: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzz()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzm:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzC()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzd:Ljava/io/Writer;

    const-string v1, "null"

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzn(Lcom/google/ads/interactivemedia/v3/internal/zzur;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    const-string v0, ","

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzi:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ": "

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzh:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ", "

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzi:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    const-string p1, ":"

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzh:Ljava/lang/String;

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzur;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzur;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzj:Z

    return-void
.end method

.method public final zzo()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzvm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Lcom/google/ads/interactivemedia/v3/internal/zzvm;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    return-void
.end method

.method public final zzq()Lcom/google/ads/interactivemedia/v3/internal/zzvm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    return-object v0
.end method

.method public final zzr(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzl:Z

    return-void
.end method

.method public final zzs()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzl:Z

    return v0
.end method

.method public final zzt(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn:Z

    return-void
.end method

.method public final zzu()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzn:Z

    return v0
.end method

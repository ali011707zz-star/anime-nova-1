.class public final Lcom/google/android/gms/internal/ads/zzajh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:Ljava/util/UUID;

.field private static final zzg:Ljava/util/Map;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Z

.field private zzD:Z

.field private zzE:Lcom/google/android/gms/internal/ads/zzajg;

.field private zzF:Z

.field private zzG:I

.field private zzH:J

.field private final zzI:Landroid/util/SparseArray;

.field private zzJ:Z

.field private zzK:J

.field private zzL:I

.field private zzM:J

.field private zzN:J

.field private zzO:I

.field private zzP:Z

.field private zzQ:J

.field private zzR:J

.field private zzS:J

.field private zzT:Z

.field private zzU:I

.field private zzV:J

.field private zzW:J

.field private zzX:I

.field private zzY:I

.field private zzZ:[I

.field private zzaa:I

.field private zzab:I

.field private zzac:I

.field private zzad:I

.field private zzae:Z

.field private zzaf:J

.field private zzag:I

.field private zzah:I

.field private zzai:I

.field private zzaj:Z

.field private zzak:Z

.field private zzal:Z

.field private zzam:I

.field private zzan:B

.field private zzao:Z

.field private zzap:Lcom/google/android/gms/internal/ads/zzaex;

.field private final zzaq:Lcom/google/android/gms/internal/ads/zzaja;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzajj;

.field private final zzi:Landroid/util/SparseArray;

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:Lcom/google/android/gms/internal/ads/zzamd;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzer;

.field private zzw:Ljava/nio/ByteBuffer;

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    .line 1
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzajh;->zzb:[B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzd:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zze:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaja;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzamd;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaja;ILcom/google/android/gms/internal/ads/zzamd;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaja;ILcom/google/android/gms/internal/ads/zzamd;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzA:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzS:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaq:Lcom/google/android/gms/internal/ads/zzaja;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaja;->zza(Lcom/google/android/gms/internal/ads/zzajb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance p1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzI:Landroid/util/SparseArray;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:Z

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Lcom/google/android/gms/internal/ads/zzajj;

    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 7
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 10
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 p2, 0x8

    .line 13
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzt:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;I)V
    .locals 1

    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzaja;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaja;ILcom/google/android/gms/internal/ads/zzamd;)V

    return-void
.end method

.method private static zzA([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private final zzB()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzD:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzajg;->zzV:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzD:Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic zzn()[B
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[B

    return-object v0
.end method

.method static synthetic zzo()Ljava/util/UUID;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic zzp()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Ljava/util/Map;

    return-object v0
.end method

.method private final zzq(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzr(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzajg;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzU:Lcom/google/android/gms/internal/ads/zzagi;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzagi;->zzc(Lcom/google/android/gms/internal/ads/zzagh;JIIILcom/google/android/gms/internal/ads/zzagg;)V

    goto/16 :goto_8

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/SSA"

    const-string v7, "S_TEXT/ASS"

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    const-string v11, "MatroskaExtractor"

    if-le v4, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    .line 4
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzW:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v12, v14

    if-nez v4, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    .line 5
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_6

    :cond_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:Lcom/google/android/gms/internal/ads/zzer;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v11

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x3

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v10

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v15

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v8

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v9

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_8

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_7

    if-ne v2, v15, :cond_6

    const-string v2, "%02d:%02d:%02d.%03d"

    .line 8
    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    .line 7
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 21
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 16
    :cond_7
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v5, 0x2710

    .line 9
    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    goto :goto_3

    :cond_8
    const-string v2, "%02d:%02d:%02d,%03d"

    .line 10
    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    .line 11
    :goto_3
    array-length v5, v2

    invoke-static {v2, v10, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v2

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_9

    .line 14
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    add-int v2, p5, v2

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_c

    .line 4
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    if-le v3, v9, :cond_b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    .line 17
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    goto :goto_7

    .line 20
    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v4

    .line 19
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-interface {v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    add-int/2addr v2, v4

    :cond_c
    :goto_7
    move v14, v2

    .line 20
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    .line 2
    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzT:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v1

    if-lt v1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzc(I)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    return-void
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzajg;IZ)I
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzajh;->zzb:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzw(Lcom/google/android/gms/internal/ads/zzaev;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzv()V

    return p1

    :cond_0
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "S_TEXT/SSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_c

    .line 4
    :cond_1
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzajh;->zze:[B

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzw(Lcom/google/android/gms/internal/ads/zzaev;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzv()V

    return p1

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzV:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/zzaet;->$r8$clinit:I

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    .line 9
    invoke-interface {p1, v4, v3, p3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzh([BIIZ)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzr()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaet;->zza(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_4

    new-array v4, v5, [B

    .line 13
    invoke-virtual {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzc([B)I

    move-result v4

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v5

    add-int/lit8 v6, v4, 0x4

    if-lt v5, v6, :cond_4

    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaet;->zza(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 78
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    const-string v4, "audio/vnd.dts.hd"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 20
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzV:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzB()V

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaj:Z

    const/4 v5, 0x4

    if-nez v4, :cond_14

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzh:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzak:Z

    const/16 v6, 0x80

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    aget-byte v7, v7, v3

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_6

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    aget-byte v4, v4, v3

    iput-byte v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzan:B

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzak:Z

    goto :goto_1

    .line 23
    :cond_6
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 25
    :cond_7
    :goto_1
    iget-byte v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzan:B

    and-int/lit8 v7, v4, 0x1

    if-ne v7, v2, :cond_11

    and-int/2addr v4, v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzao:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzt:Lcom/google/android/gms/internal/ads/zzer;

    .line 26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {p1, v8, v3, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzao:Z

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    if-ne v4, v1, :cond_8

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    or-int/2addr v6, v9

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v10

    int-to-byte v6, v6

    .line 28
    aput-byte v6, v10, v3

    .line 29
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 30
    invoke-interface {v0, v8, v2, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    .line 31
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 32
    invoke-interface {v0, v7, v9, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v6, v9

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    :cond_9
    if-ne v4, v1, :cond_11

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzal:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    invoke-interface {p1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    .line 34
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzam:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzal:Z

    :cond_a
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzam:I

    mul-int/2addr v4, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 36
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzam:I

    shr-int/2addr v4, v2

    add-int/2addr v4, v2

    mul-int/lit8 v7, v4, 0x6

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_b

    .line 38
    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_c

    .line 39
    :cond_b
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    :cond_c
    int-to-short v4, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v4, v3

    move v8, v4

    :goto_3
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzam:I

    if-ge v4, v9, :cond_e

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v9

    sub-int v8, v9, v8

    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v8, v8

    .line 43
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v8, v9

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    sub-int v4, p3, v4

    sub-int/2addr v4, v8

    and-int/lit8 v6, v9, 0x1

    if-ne v6, v2, :cond_f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 73
    :cond_f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v4, v4

    .line 46
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 49
    invoke-interface {v0, v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    goto :goto_6

    .line 47
    :cond_10
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzi:[B

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    array-length v7, v4

    .line 50
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 49
    :cond_11
    :goto_6
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string v6, "A_OPUS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p4, :cond_13

    goto :goto_7

    .line 73
    :cond_12
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzg:I

    if-lez p4, :cond_13

    .line 49
    :goto_7
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    const/high16 v4, 0x10000000

    or-int/2addr p4, v4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    .line 51
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    .line 52
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result p4

    add-int/2addr p4, p3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    sub-int/2addr p4, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 53
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    shr-int/lit8 v6, p4, 0x18

    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v3

    .line 55
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    shr-int/lit8 v6, p4, 0x8

    .line 56
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v7, 0x3

    aput-byte p4, v6, v7

    .line 58
    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzagh;->zzd(Lcom/google/android/gms/internal/ads/zzer;II)V

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr p4, v5

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaj:Z

    :cond_14
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    .line 59
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v4

    add-int/2addr p3, v4

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    .line 77
    :cond_15
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzU:Lcom/google/android/gms/internal/ads/zzagi;

    if-nez v1, :cond_16

    goto :goto_9

    .line 72
    :cond_16
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result p4

    if-nez p4, :cond_17

    goto :goto_8

    :cond_17
    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzU:Lcom/google/android/gms/internal/ads/zzagi;

    .line 73
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzagi;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 77
    :goto_9
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    if-ge p4, p3, :cond_1b

    sub-int p4, p3, p4

    .line 74
    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzajh;->zzy(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzagh;I)I

    move-result p4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    goto :goto_9

    .line 59
    :cond_18
    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    .line 61
    aput-byte v3, v6, v3

    .line 62
    aput-byte v3, v6, v2

    .line 63
    aput-byte v3, v6, v1

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzaa:I

    rsub-int/lit8 v2, v1, 0x4

    :goto_b
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    if-ge v7, p3, :cond_1b

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzai:I

    if-nez v7, :cond_1a

    .line 64
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v2, v7

    sub-int v9, v1, v7

    .line 65
    invoke-interface {p1, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    if-lez v7, :cond_19

    .line 66
    invoke-virtual {p4, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    :cond_19
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    .line 67
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzai:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:Lcom/google/android/gms/internal/ads/zzer;

    .line 69
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 70
    invoke-interface {v0, v7, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    goto :goto_b

    .line 71
    :cond_1a
    invoke-direct {p0, p1, v0, v7}, Lcom/google/android/gms/internal/ads/zzajh;->zzy(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzagh;I)I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzai:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzai:I

    goto :goto_b

    :cond_1b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:Lcom/google/android/gms/internal/ads/zzer;

    .line 75
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 76
    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    :cond_1c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzv()V

    return p1

    .line 2
    :cond_1d
    :goto_c
    sget-object p2, Lcom/google/android/gms/internal/ads/zzajh;->zzd:[B

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzw(Lcom/google/android/gms/internal/ads/zzaev;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzv()V

    return p1
.end method

.method private final zzv()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzag:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzah:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzai:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzak:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzal:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzam:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzan:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzao:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    return-void
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzaev;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    add-int v3, v1, p3

    .line 3
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 4
    array-length v3, p2

    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    return-void
.end method

.method private static zzx(JLjava/lang/String;J)[B
    .locals 11

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const-wide v3, 0xd693a400L

    div-long v5, p0, v3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v5, v5

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v7, v5

    mul-long/2addr v7, v3

    sub-long/2addr p0, v7

    const-wide/32 v3, 0x3938700

    div-long v7, p0, v3

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    int-to-long v8, v5

    mul-long/2addr v8, v3

    sub-long/2addr p0, v8

    const-wide/32 v3, 0xf4240

    div-long v8, p0, v3

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v5

    mul-long/2addr v9, v3

    sub-long/2addr p0, v9

    div-long/2addr p0, p3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v6, p1, v1

    aput-object v7, p1, v2

    const/4 p3, 0x2

    aput-object v8, p1, p3

    const/4 p3, 0x3

    aput-object p0, p1, p3

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private final zzy(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzagh;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    return p1
.end method

.method private final zzz(J)J
    .locals 7

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    .line 1
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaji;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p1

    return p1
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamg;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzamd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzT:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzT:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaq:Lcom/google/android/gms/internal/ads/zzaja;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaja;->zzc(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzP:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzR:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzQ:J

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzP:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzR:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzR:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajg;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajg;->zzb()V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzU:Lcom/google/android/gms/internal/ads/zzagi;

    if-eqz p2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    .line 5
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzagi;->zzd(Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzagg;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v0
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzS:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaq:Lcom/google/android/gms/internal/ads/zzaja;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzaja;->zzb()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Lcom/google/android/gms/internal/ads/zzajj;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzajj;->zza()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzv()V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzJ:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzI:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p3, p2, :cond_2

    .line 6
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzU:Lcom/google/android/gms/internal/ads/zzagi;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagi;->zza()V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method

.method protected final zzh(IJJ)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa0

    const-wide/16 v2, 0x0

    if-eq p1, v1, :cond_d

    const/16 v1, 0xae

    if-eq p1, v1, :cond_c

    const/16 v1, 0xb7

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzQ:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzP:Z

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafx;

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    .line 5
    invoke-direct {p1, p2, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez p1, :cond_b

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzJ:Z

    return-void

    .line 2
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_5

    cmp-long p1, v0, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:J

    return-void

    .line 3
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 4
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzy:Z

    return-void

    .line 1
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 2
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzh:Z

    return-void

    .line 6
    :cond_8
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzG:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzH:J

    return-void

    .line 9
    :cond_9
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez p2, :cond_b

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    return-void

    .line 6
    :cond_a
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez p2, :cond_b

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    :cond_b
    :goto_1
    return-void

    .line 8
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzC:Z

    .line 10
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zza:Z

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzae:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaf:J

    return-void
.end method

.method protected final zzi(I)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 55
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa0

    const/16 v3, 0x8

    .line 55
    const-string v4, "A_OPUS"

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v1, v2, :cond_2d

    const/16 v2, 0xae

    const/16 v10, 0x14

    const/4 v11, 0x0

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xb7

    const-wide/16 v3, -0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_28

    const/16 v2, 0x4dbb

    const v15, 0x1c53bb6b

    if-eq v1, v2, :cond_26

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_24

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_22

    const v2, 0x1549a966

    if-eq v1, v2, :cond_20

    const v2, 0x1654ae6b

    if-eq v1, v2, :cond_11

    if-eq v1, v15, :cond_0

    goto/16 :goto_18

    .line 59
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v1, :cond_33

    move v1, v9

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzI:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    cmp-long v1, v3, v13

    if-nez v1, :cond_2

    :cond_1
    move-wide/from16 v24, v13

    const/16 v26, -0x1

    goto :goto_2

    :cond_2
    move v1, v9

    .line 3
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzajf;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    move-wide/from16 v24, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    move-wide/from16 v20, v13

    const/16 v26, -0x1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:J

    move/from16 v19, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v22, v12

    .line 5
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(Landroid/util/SparseArray;JIJJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    .line 6
    invoke-interface {v1, v15}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    goto :goto_3

    :cond_4
    move-wide/from16 v24, v13

    const/16 v26, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafx;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    .line 7
    invoke-direct {v3, v11, v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    .line 8
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    :goto_3
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzJ:Z

    move v1, v9

    :goto_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    .line 10
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajg;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    move-wide/from16 v16, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:J

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    if-eq v4, v7, :cond_6

    :cond_5
    move/from16 v22, v1

    move-object v8, v2

    move/from16 v21, v9

    goto/16 :goto_c

    .line 30
    :cond_6
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    .line 11
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v22, v1

    move-object v8, v2

    move/from16 v21, v9

    :goto_5
    move-wide/from16 v1, v24

    goto/16 :goto_a

    .line 14
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-wide/16 v18, 0x0

    move/from16 v21, v9

    move/from16 v10, v26

    :goto_6
    if-ge v9, v15, :cond_8

    .line 15
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/gms/internal/ads/zzaje;

    .line 16
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v27

    const-wide/32 v29, 0x989680

    cmp-long v23, v27, v29

    if-lez v23, :cond_9

    :cond_8
    move/from16 v22, v1

    move-object v8, v2

    move/from16 v1, v26

    goto :goto_9

    :cond_9
    add-int/lit8 v7, v9, 0x1

    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    add-int/lit8 v8, v27, -0x1

    if-ge v9, v8, :cond_a

    .line 18
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaje;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaje;->zzb()J

    move-result-wide v29

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaje;->zzc()J

    move-result-wide v31

    add-long v29, v29, v31

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zzb()J

    move-result-wide v31

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zzc()J

    move-result-wide v33

    add-long v31, v31, v33

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v33

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v35

    sub-long v33, v33, v35

    :goto_7
    sub-long v29, v29, v31

    move/from16 v22, v1

    move-object v8, v2

    move-wide/from16 v1, v29

    move-wide/from16 v29, v5

    move-wide/from16 v5, v33

    goto :goto_8

    :cond_a
    add-long v29, v13, v5

    .line 21
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zzb()J

    move-result-wide v31

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zzc()J

    move-result-wide v33

    add-long v31, v31, v33

    .line 22
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v33

    sub-long v33, v11, v33

    goto :goto_7

    :goto_8
    cmp-long v27, v5, v16

    if-lez v27, :cond_b

    long-to-double v1, v1

    long-to-double v5, v5

    div-double/2addr v1, v5

    cmpl-double v5, v1, v18

    if-lez v5, :cond_b

    move-wide/from16 v18, v1

    move v10, v9

    :cond_b
    move v9, v7

    move-object v2, v8

    move/from16 v1, v22

    move-wide/from16 v5, v29

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto :goto_6

    :goto_9
    if-ne v10, v1, :cond_c

    goto/16 :goto_5

    .line 23
    :cond_c
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaje;->zza()J

    move-result-wide v1

    :goto_a
    cmp-long v4, v1, v24

    if-eqz v4, :cond_e

    .line 13
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzahx;

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(J)V

    if-nez v4, :cond_d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v5, v4, v21

    move-wide/from16 v5, v24

    .line 25
    invoke-direct {v1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_b

    :cond_d
    const/4 v2, 0x1

    .line 27
    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v5, v1, v21

    .line 26
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v1

    .line 25
    :goto_b
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 28
    :cond_e
    :goto_c
    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzV:Z

    if-nez v1, :cond_f

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzajg;->zzb()V

    .line 30
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_f
    add-int/lit8 v1, v22, 0x1

    move-object v2, v8

    move-wide/from16 v5, v16

    move/from16 v9, v21

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v10, 0x14

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v26, -0x1

    goto/16 :goto_4

    .line 33
    :cond_10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajh;->zzB()V

    return-void

    :cond_11
    move/from16 v21, v9

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 35
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Z

    if-eqz v2, :cond_12

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzQ:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_13

    :cond_12
    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    move/from16 v2, v21

    :goto_d
    move/from16 v3, v21

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 36
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_19

    .line 37
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzajg;

    .line 38
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    .line 39
    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzX:Z

    if-eqz v9, :cond_14

    .line 40
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    :cond_14
    const/4 v10, -0x1

    if-ne v5, v10, :cond_17

    .line 41
    iget v5, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    goto :goto_f

    :cond_15
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_17

    .line 42
    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzX:Z

    if-eqz v9, :cond_16

    .line 43
    iget v6, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    :cond_16
    if-ne v7, v10, :cond_17

    .line 44
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    :cond_17
    :goto_f
    if-eqz v2, :cond_18

    .line 45
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzajg;->zzb()V

    .line 46
    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzV:Z

    if-nez v9, :cond_18

    .line 47
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzajg;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1a

    .line 44
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    goto :goto_11

    :cond_1a
    if-eq v5, v10, :cond_1b

    .line 50
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    goto :goto_11

    :cond_1b
    if-eq v6, v10, :cond_1c

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    goto :goto_11

    :cond_1c
    if-eq v7, v10, :cond_1d

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    goto :goto_11

    .line 49
    :cond_1d
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1e

    move/from16 v3, v21

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajg;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    goto :goto_10

    :cond_1e
    const/4 v12, -0x1

    :goto_10
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzO:I

    :goto_11
    if-eqz v2, :cond_33

    .line 50
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajh;->zzB()V

    return-void

    .line 34
    :cond_1f
    const-string v1, "No valid tracks were found"

    .line 35
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 49
    :cond_20
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:J

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v24

    if-nez v1, :cond_21

    const-wide/32 v1, 0xf4240

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:J

    :cond_21
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzA:J

    cmp-long v3, v1, v24

    if-eqz v3, :cond_33

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzz(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzB:J

    return-void

    .line 52
    :cond_22
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 53
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzh:Z

    if-eqz v2, :cond_33

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzi:[B

    if-nez v1, :cond_23

    goto/16 :goto_18

    :cond_23
    const-string v1, "Combining encryption and compression is not supported"

    .line 54
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 55
    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 56
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzh:Z

    if-eqz v2, :cond_33

    .line 57
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    if-eqz v2, :cond_25

    .line 58
    new-instance v2, Lcom/google/android/gms/internal/ads/zzq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzp;

    .line 59
    sget-object v4, Lcom/google/android/gms/internal/ads/zzg;->zza:Ljava/util/UUID;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzagg;->zzb:[B

    const-string v6, "video/webm"

    .line 60
    invoke-direct {v3, v4, v11, v6, v5}, Lcom/google/android/gms/internal/ads/zzp;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/zzp;

    const/16 v21, 0x0

    aput-object v3, v4, v21

    .line 61
    invoke-direct {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzp;)V

    .line 59
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzl:Lcom/google/android/gms/internal/ads/zzq;

    return-void

    .line 57
    :cond_25
    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    .line 58
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 54
    :cond_26
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzG:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_27

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzH:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_27

    if-ne v1, v15, :cond_33

    .line 62
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzQ:J

    return-void

    .line 54
    :cond_27
    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    .line 62
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 72
    :cond_28
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v2, :cond_33

    .line 63
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v24

    if-eqz v1, :cond_33

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_33

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzI:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_29

    new-instance v1, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    .line 66
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaje;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(JJJ[B)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2a
    const/4 v10, -0x1

    .line 62
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_12

    .line 72
    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xb

    goto/16 :goto_13

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x16

    goto/16 :goto_13

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x11

    goto/16 :goto_13

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x3

    goto/16 :goto_13

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1b

    goto/16 :goto_13

    :sswitch_5
    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1e

    goto/16 :goto_13

    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_13

    :sswitch_7
    const-string v3, "S_TEXT/SSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1d

    goto/16 :goto_13

    :sswitch_8
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1c

    goto/16 :goto_13

    :sswitch_9
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x18

    goto/16 :goto_13

    :sswitch_a
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x19

    goto/16 :goto_13

    :sswitch_b
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1a

    goto/16 :goto_13

    :sswitch_c
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x14

    goto/16 :goto_13

    :sswitch_d
    const-string v3, "V_THEORA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xa

    goto/16 :goto_13

    :sswitch_e
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x20

    goto/16 :goto_13

    :sswitch_f
    const-string v3, "V_VP9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x1

    goto/16 :goto_13

    :sswitch_10
    const-string v3, "V_VP8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x0

    goto/16 :goto_13

    :sswitch_11
    const-string v3, "V_AV1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x2

    goto/16 :goto_13

    :sswitch_12
    const-string v3, "A_DTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x13

    goto/16 :goto_13

    :sswitch_13
    const-string v3, "A_AC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x10

    goto/16 :goto_13

    :sswitch_14
    const-string v3, "A_AAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xd

    goto/16 :goto_13

    :sswitch_15
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x15

    goto/16 :goto_13

    :sswitch_16
    const-string v3, "S_VOBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x1f

    goto/16 :goto_13

    :sswitch_17
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x7

    goto/16 :goto_13

    :sswitch_18
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x5

    goto/16 :goto_13

    :sswitch_19
    const-string v3, "S_DVBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x21

    goto :goto_13

    :sswitch_1a
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x9

    goto :goto_13

    :sswitch_1b
    const-string v3, "A_MPEG/L3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xf

    goto :goto_13

    :sswitch_1c
    const-string v3, "A_MPEG/L2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xe

    goto :goto_13

    :sswitch_1d
    const-string v3, "A_VORBIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0xc

    goto :goto_13

    :sswitch_1e
    const-string v3, "A_TRUEHD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x12

    goto :goto_13

    :sswitch_1f
    const-string v3, "A_MS/ACM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v3, 0x17

    goto :goto_13

    :sswitch_20
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x4

    goto :goto_13

    :sswitch_21
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x6

    goto :goto_13

    :cond_2b
    :goto_12
    move v3, v10

    :goto_13
    packed-switch v3, :pswitch_data_0

    goto :goto_14

    .line 69
    :pswitch_0
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajg;->zza(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzap:Lcom/google/android/gms/internal/ads/zzaex;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 71
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzY:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    .line 72
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_14
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    return-void

    .line 68
    :cond_2c
    const-string v1, "CodecId is missing in TrackEntry element"

    .line 69
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_2d
    move-wide/from16 v16, v5

    .line 67
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaa:I

    .line 74
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajg;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajg;->zzb()V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaf:J

    cmp-long v2, v5, v16

    if-lez v2, :cond_2e

    .line 76
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    .line 77
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 78
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaf:J

    .line 79
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 81
    array-length v4, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    :cond_2e
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    if-ge v3, v4, :cond_2f

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 82
    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2f
    const/4 v3, 0x0

    :goto_16
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    if-ge v3, v4, :cond_32

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzV:J

    .line 83
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzf:I

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    if-nez v3, :cond_31

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzae:Z

    if-nez v3, :cond_30

    or-int/lit8 v6, v6, 0x1

    :cond_30
    const/4 v7, 0x0

    goto :goto_17

    :cond_31
    move v7, v3

    :goto_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 84
    aget v3, v3, v7

    sub-int/2addr v2, v3

    move/from16 v37, v6

    move v6, v2

    move-wide/from16 v38, v4

    move v5, v3

    move-wide/from16 v2, v38

    move/from16 v4, v37

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzs(Lcom/google/android/gms/internal/ads/zzajg;JIII)V

    const/16 v28, 0x1

    add-int/lit8 v3, v7, 0x1

    move v2, v6

    goto :goto_16

    :cond_32
    const/4 v3, 0x0

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    :cond_33
    :goto_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzj(IJ)V
    .locals 10

    const/16 v0, 0xf0

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5031

    const/4 v1, 0x0

    .line 40
    const-string v2, " not supported"

    if-eq p1, v0, :cond_17

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_15

    const/16 v0, 0x21

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    long-to-int p2, p2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 24
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzD:I

    return-void

    :pswitch_1
    long-to-int p2, p2

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzC:I

    return-void

    :pswitch_2
    long-to-int p2, p2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 41
    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzy:Z

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result p1

    if-eq p1, v5, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 43
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzz:I

    return-void

    :pswitch_3
    long-to-int p2, p2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result p1

    if-eq p1, v5, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 46
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzajg;->zzA:I

    return-void

    :pswitch_4
    long-to-int p2, p2

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    if-eq p2, v9, :cond_1

    if-eq p2, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 48
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzB:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 49
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzB:I

    return-void

    .line 34
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:J

    return-void

    :sswitch_1
    long-to-int p2, p2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 34
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzf:I

    return-void

    :sswitch_2
    long-to-int p2, p2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 36
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzs:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 37
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzs:I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 38
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzs:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 39
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzs:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzaf:J

    return-void

    :sswitch_4
    long-to-int p2, p2

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 32
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzQ:I

    return-void

    .line 29
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 30
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzT:J

    return-void

    .line 27
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 28
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzS:J

    return-void

    :sswitch_7
    long-to-int p2, p2

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 26
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzg:I

    return-void

    :sswitch_8
    long-to-int p2, p2

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 51
    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzy:Z

    .line 52
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzo:I

    return-void

    :sswitch_9
    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v6, v9

    .line 19
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 20
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzW:Z

    return-void

    :sswitch_a
    long-to-int p2, p2

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzq:I

    return-void

    :sswitch_b
    long-to-int p2, p2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 16
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzr:I

    return-void

    :sswitch_c
    long-to-int p2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 14
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzp:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    if-eqz p2, :cond_a

    if-eq p2, v9, :cond_9

    if-eq p2, v7, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 54
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzx:I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 55
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzx:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 56
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzx:I

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 57
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzx:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzH:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 60
    :cond_b
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x24

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "AESSettingsCipherMode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 61
    :cond_c
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1d

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 62
    :cond_d
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "EBMLReadVersion "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    .line 63
    :cond_e
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr p1, v0

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocTypeReadVersion "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 64
    :cond_f
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentCompAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_14
    long-to-int p2, p2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzajg;->zzd(I)V

    return-void

    .line 63
    :sswitch_15
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzae:Z

    return-void

    .line 67
    :sswitch_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v0, :cond_1b

    long-to-int p2, p2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzL:I

    return-void

    :sswitch_17
    long-to-int p1, p2

    .line 68
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzad:I

    return-void

    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzS:J

    return-void

    :sswitch_19
    long-to-int p2, p2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzd:I

    return-void

    :sswitch_1a
    long-to-int p2, p2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzn:I

    return-void

    .line 68
    :sswitch_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v0, :cond_1b

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzK:J

    return-void

    :sswitch_1c
    long-to-int p2, p2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzm:I

    return-void

    :sswitch_1d
    long-to-int p2, p2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzP:I

    return-void

    .line 71
    :sswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajh;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzW:J

    return-void

    :sswitch_1f
    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v6, v9

    .line 1
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 2
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzX:Z

    return-void

    :sswitch_20
    long-to-int p2, p2

    if-eq p2, v9, :cond_14

    if-eq p2, v8, :cond_13

    const/16 p3, 0x11

    if-eq p2, p3, :cond_12

    if-eq p2, v0, :cond_11

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 73
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    return-void

    .line 80
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    const/4 p2, 0x5

    .line 81
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    return-void

    .line 78
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 79
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    return-void

    .line 76
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 77
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    return-void

    .line 74
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 75
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    return-void

    :cond_15
    cmp-long p1, p2, v3

    if-nez p1, :cond_16

    goto :goto_0

    .line 58
    :cond_16
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingScope "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_17
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 59
    :cond_18
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingOrder "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 65
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v0, :cond_1b

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzM:J

    return-void

    .line 63
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzF:Z

    if-nez v0, :cond_1b

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzr(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzN:J

    :cond_1b
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzk(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    double-to-float p2, p2

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 28
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzv:F

    return-void

    :pswitch_1
    double-to-float p2, p2

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 26
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzu:F

    return-void

    :pswitch_2
    double-to-float p2, p2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 24
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzt:F

    return-void

    :pswitch_3
    double-to-float p2, p2

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzN:F

    return-void

    :pswitch_4
    double-to-float p2, p2

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 20
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzM:F

    return-void

    :pswitch_5
    double-to-float p2, p2

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzL:F

    return-void

    :pswitch_6
    double-to-float p2, p2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 16
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzK:F

    return-void

    :pswitch_7
    double-to-float p2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 14
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzJ:F

    return-void

    :pswitch_8
    double-to-float p2, p2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 12
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzI:F

    return-void

    :pswitch_9
    double-to-float p2, p2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzH:F

    return-void

    :pswitch_a
    double-to-float p2, p2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzG:F

    return-void

    :pswitch_b
    double-to-float p2, p2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzF:F

    return-void

    :pswitch_c
    double-to-float p2, p2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzE:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 28
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzA:J

    return-void

    .line 1
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    double-to-int p2, p2

    .line 2
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzR:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzl(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzajg;->zze(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x16

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 7
    :cond_4
    :goto_0
    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzC:Z

    return-void

    .line 1
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    return-void
.end method

.method protected final zzm(IILcom/google/android/gms/internal/ads/zzaev;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    const/16 v3, 0xa1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/16 v8, 0xa3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v3, :cond_b

    if-eq v1, v8, :cond_b

    const/16 v3, 0xa5

    if-eq v1, v3, :cond_8

    const/16 v3, 0x41ed

    if-eq v1, v3, :cond_5

    const/16 v3, 0x4255

    if-eq v1, v3, :cond_4

    const/16 v3, 0x47e2

    if-eq v1, v3, :cond_3

    const/16 v3, 0x53ab

    if-eq v1, v3, :cond_2

    const/16 v3, 0x63a2

    if-eq v1, v3, :cond_1

    const/16 v3, 0x7672

    if-ne v1, v3, :cond_0

    .line 6
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 7
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzw:[B

    .line 8
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-void

    .line 68
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected id: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 9
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 10
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzk:[B

    .line 11
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-void

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:Lcom/google/android/gms/internal/ads/zzer;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([BB)V

    rsub-int/lit8 v3, v2, 0x4

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    invoke-interface {v7, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 14
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzG:I

    return-void

    .line 16
    :cond_3
    new-array v3, v2, [B

    .line 17
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagg;

    invoke-direct {v2, v9, v3, v10, v10}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(I[BII)V

    .line 19
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzj:Lcom/google/android/gms/internal/ads/zzagg;

    return-void

    .line 20
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 21
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzi:[B

    .line 22
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-void

    .line 1
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzq(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzE:Lcom/google/android/gms/internal/ads/zzajg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajg;->zzc()I

    move-result v3

    const v4, 0x64767643

    if-eq v3, v4, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajg;->zzc()I

    move-result v3

    const v4, 0x64766343

    if-ne v3, v4, :cond_6

    goto :goto_0

    .line 5
    :cond_6
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return-void

    .line 3
    :cond_7
    :goto_0
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzO:[B

    .line 4
    invoke-interface {v7, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-void

    .line 22
    :cond_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    if-eq v1, v5, :cond_9

    goto/16 :goto_d

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaa:I

    .line 23
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajg;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzad:I

    if-ne v3, v6, :cond_a

    .line 24
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Ljava/lang/String;

    const-string v3, "V_VP9"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:Lcom/google/android/gms/internal/ads/zzer;

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    invoke-interface {v7, v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    return-void

    .line 25
    :cond_a
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return-void

    :cond_b
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    const/16 v11, 0x8

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Lcom/google/android/gms/internal/ads/zzajj;

    .line 28
    invoke-virtual {v3, v7, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzajj;->zzb(Lcom/google/android/gms/internal/ads/zzaev;ZZI)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaa:I

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzajj;->zzc()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzW:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 30
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    :cond_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Landroid/util/SparseArray;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzaa:I

    .line 31
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajg;

    if-nez v3, :cond_d

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    sub-int v1, v2, v1

    .line 32
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    return-void

    .line 33
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzajg;->zzb()V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    if-ne v12, v9, :cond_1f

    const/4 v12, 0x3

    .line 34
    invoke-direct {v0, v7, v12}, Lcom/google/android/gms/internal/ads/zzajh;->zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzer;

    .line 35
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v14

    aget-byte v14, v14, v5

    and-int/lit8 v14, v14, 0x6

    shr-int/2addr v14, v9

    const/16 v15, 0xff

    if-nez v14, :cond_e

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 36
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzajh;->zzA([II)[I

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x3

    .line 37
    aput v2, v4, v10

    :goto_1
    move/from16 v18, v5

    move/from16 v20, v9

    move/from16 v17, v10

    move/from16 v19, v11

    goto/16 :goto_8

    .line 38
    :cond_e
    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V

    .line 39
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v16

    aget-byte v6, v16, v12

    and-int/2addr v6, v15

    add-int/2addr v6, v9

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 40
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzA([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    if-ne v14, v5, :cond_f

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    .line 41
    div-int/2addr v2, v4

    .line 42
    invoke-static {v6, v10, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_f
    if-ne v14, v9, :cond_12

    move v4, v10

    move v8, v4

    const/4 v6, 0x4

    :goto_2
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 43
    aput v10, v12, v4

    :goto_3
    add-int/lit8 v12, v6, 0x1

    .line 44
    invoke-direct {v0, v7, v12}, Lcom/google/android/gms/internal/ads/zzajh;->zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V

    .line 45
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v14

    aget-byte v6, v14, v6

    and-int/2addr v6, v15

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 46
    aget v17, v14, v4

    add-int v17, v17, v6

    aput v17, v14, v4

    if-eq v6, v15, :cond_10

    add-int v8, v8, v17

    add-int/lit8 v4, v4, 0x1

    move v6, v12

    goto :goto_2

    :cond_10
    move v6, v12

    goto :goto_3

    :cond_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    sub-int/2addr v2, v14

    sub-int/2addr v2, v6

    sub-int/2addr v2, v8

    .line 47
    aput v2, v4, v12

    goto :goto_1

    :cond_12
    if-ne v14, v12, :cond_1e

    move v8, v10

    move v12, v8

    const/4 v6, 0x4

    :goto_4
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    add-int/lit8 v14, v14, -0x1

    if-ge v8, v14, :cond_1a

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 48
    aput v10, v14, v8

    add-int/lit8 v14, v6, 0x1

    .line 49
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/ads/zzajh;->zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V

    .line 50
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v17

    aget-byte v17, v17, v6

    if-eqz v17, :cond_19

    move/from16 v17, v10

    :goto_5
    if-ge v10, v11, :cond_15

    rsub-int/lit8 v18, v10, 0x7

    move/from16 v19, v11

    shl-int v11, v9, v18

    .line 51
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v18

    aget-byte v18, v18, v6

    and-int v18, v18, v11

    if-eqz v18, :cond_14

    add-int/2addr v14, v10

    .line 52
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/ads/zzajh;->zzt(Lcom/google/android/gms/internal/ads/zzaev;I)V

    .line 53
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v18

    add-int/lit8 v20, v6, 0x1

    aget-byte v6, v18, v6

    and-int/2addr v6, v15

    not-int v11, v11

    and-int/2addr v6, v11

    move v11, v5

    int-to-long v5, v6

    move/from16 v18, v11

    move/from16 v11, v20

    :goto_6
    if-ge v11, v14, :cond_13

    shl-long v5, v5, v19

    .line 54
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v20

    add-int/lit8 v21, v11, 0x1

    aget-byte v11, v20, v11

    and-int/2addr v11, v15

    move/from16 v20, v9

    move/from16 v22, v10

    int-to-long v9, v11

    or-long/2addr v5, v9

    move/from16 v9, v20

    move/from16 v11, v21

    move/from16 v10, v22

    goto :goto_6

    :cond_13
    move/from16 v20, v9

    move/from16 v22, v10

    if-lez v8, :cond_16

    mul-int/lit8 v10, v22, 0x7

    add-int/lit8 v10, v10, 0x6

    const-wide/16 v21, 0x1

    shl-long v9, v21, v10

    const-wide/16 v21, -0x1

    add-long v9, v9, v21

    sub-long/2addr v5, v9

    goto :goto_7

    :cond_14
    move/from16 v18, v5

    move/from16 v20, v9

    move/from16 v22, v10

    add-int/lit8 v10, v22, 0x1

    move/from16 v11, v19

    goto :goto_5

    :cond_15
    move/from16 v18, v5

    move/from16 v20, v9

    move/from16 v19, v11

    const-wide/16 v5, 0x0

    :cond_16
    :goto_7
    const-wide/32 v9, -0x80000000

    cmp-long v9, v5, v9

    if-ltz v9, :cond_18

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v5, v9

    if-gtz v9, :cond_18

    .line 56
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    long-to-int v5, v5

    if-eqz v8, :cond_17

    add-int/lit8 v6, v8, -0x1

    .line 55
    aget v6, v9, v6

    add-int/2addr v5, v6

    :cond_17
    aput v5, v9, v8

    add-int/2addr v12, v5

    add-int/lit8 v8, v8, 0x1

    move v6, v14

    move/from16 v10, v17

    move/from16 v5, v18

    move/from16 v11, v19

    move/from16 v9, v20

    goto/16 :goto_4

    .line 54
    :cond_18
    const-string v1, "EBML lacing sample size out of range."

    .line 56
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 58
    :cond_19
    const-string v1, "No valid varint length mask found"

    .line 57
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_1a
    move/from16 v18, v5

    move/from16 v20, v9

    move/from16 v17, v10

    move/from16 v19, v11

    .line 55
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzab:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    sub-int/2addr v2, v12

    .line 58
    aput v2, v4, v14

    .line 59
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    aget-byte v2, v2, v17

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v4

    aget-byte v4, v4, v20

    and-int/2addr v4, v15

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzS:J

    or-int/2addr v2, v4

    int-to-long v8, v2

    .line 60
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzajh;->zzz(J)J

    move-result-wide v8

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzV:J

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    move/from16 v4, v20

    if-eq v2, v4, :cond_1b

    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1d

    .line 61
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    aget-byte v1, v1, v18

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1c

    const/16 v1, 0xa3

    :cond_1b
    const/4 v2, 0x1

    goto :goto_9

    :cond_1c
    move/from16 v2, v17

    const/16 v1, 0xa3

    goto :goto_9

    :cond_1d
    move/from16 v2, v17

    :goto_9
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    move/from16 v11, v18

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    move/from16 v2, v17

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    const/16 v2, 0xa3

    goto :goto_a

    .line 68
    :cond_1e
    const-string v1, "Unexpected lacing value: 2"

    .line 67
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_1f
    move v2, v8

    :goto_a
    if-ne v1, v2, :cond_21

    .line 61
    :goto_b
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    if-ge v1, v2, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 64
    aget v1, v2, v1

    const/4 v2, 0x0

    .line 65
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzu(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzajg;IZ)I

    move-result v5

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzV:J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzf:I

    mul-int/2addr v4, v6

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    add-long/2addr v1, v8

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzac:I

    const/4 v6, 0x0

    move-wide/from16 v23, v1

    move-object v1, v3

    move-wide/from16 v2, v23

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzs(Lcom/google/android/gms/internal/ads/zzajg;JIII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    move-object v3, v1

    goto :goto_b

    :cond_20
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzU:I

    return-void

    :cond_21
    move-object v1, v3

    const/4 v4, 0x1

    :goto_c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzY:I

    if-ge v2, v3, :cond_22

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzZ:[I

    .line 62
    aget v5, v3, v2

    .line 63
    invoke-direct {v0, v7, v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzajh;->zzu(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzajg;IZ)I

    move-result v5

    aput v5, v3, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzX:I

    goto :goto_c

    :cond_22
    :goto_d
    return-void
.end method

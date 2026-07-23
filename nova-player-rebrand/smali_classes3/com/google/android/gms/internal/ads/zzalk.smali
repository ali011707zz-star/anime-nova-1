.class final Lcom/google/android/gms/internal/ads/zzalk;
.super Lcom/google/android/gms/internal/ads/zzalt;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzafh;

.field private zzb:Lcom/google/android/gms/internal/ads/zzalj;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalt;-><init>()V

    return-void
.end method

.method private static zzd([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method protected final zza(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzb:Lcom/google/android/gms/internal/ads/zzalj;

    :cond_0
    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzer;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zzd([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzO()J

    .line 5
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzafc;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)I

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/ads/zzer;JLcom/google/android/gms/internal/ads/zzalr;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzafh;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzafh;-><init>([BI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result p1

    .line 2
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzafh;->zzc([BLcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object p1

    const-string p2, "audio/ogg"

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzalr;->zza:Lcom/google/android/gms/internal/ads/zzv;

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 5
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafe;->zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzafg;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzafh;->zze(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzalj;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzalj;-><init>(Lcom/google/android/gms/internal/ads/zzafh;Lcom/google/android/gms/internal/ads/zzafg;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzb:Lcom/google/android/gms/internal/ads/zzalj;

    return v2

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zzd([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzb:Lcom/google/android/gms/internal/ads/zzalj;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzalj;->zzd(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzb:Lcom/google/android/gms/internal/ads/zzalj;

    .line 9
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzalr;->zzb:Lcom/google/android/gms/internal/ads/zzalp;

    .line 10
    :cond_2
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzalr;->zza:Lcom/google/android/gms/internal/ads/zzv;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_3
    return v2
.end method

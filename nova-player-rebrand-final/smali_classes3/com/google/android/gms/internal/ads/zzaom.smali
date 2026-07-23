.class public final Lcom/google/android/gms/internal/ads/zzaom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzagh;

.field private zzd:Z

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzer;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    return p1
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzapy;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v5, "application/dvbsubs"

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzapy;->zzb:[B

    .line 8
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzapy;->zza:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    .line 4
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 11
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaom;->zzf(Lcom/google/android/gms/internal/ads/zzer;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaom;->zzf(Lcom/google/android/gms/internal/ads/zzer;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 4
    aget-object v4, v3, v1

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 6
    invoke-interface {v4, p1, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    :cond_3
    return-void
.end method

.method public final zze(Z)V
    .locals 10

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:[Lcom/google/android/gms/internal/ads/zzagh;

    move v1, v0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v3, p1, v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 3
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:Z

    :cond_2
    return-void
.end method

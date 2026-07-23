.class public final Lcom/google/android/gms/internal/ads/zzaox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private zzc:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzd:Z

.field private zze:J

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zza:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string p2, "application/id3"

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

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

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    .line 3
    invoke-static {v3, v4, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v3

    const/16 v4, 0x33

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzG()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    return-void

    .line 13
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    sub-int/2addr v1, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    .line 12
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    return-void
.end method

.method public final zze(Z)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    :cond_2
    :goto_1
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzaou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzapq;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzape;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzape;

.field private final zze:Lcom/google/android/gms/internal/ads/zzape;

.field private zzf:J

.field private final zzg:[Z

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaot;

.field private zzk:Z

.field private zzl:J

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapq;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzape;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzape;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzape;

    const/16 p2, 0x8

    .line 2
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzape;

    const/4 p2, 0x6

    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:Lcom/google/android/gms/internal/ads/zzape;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method

.method private final zzf(JIJ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzc(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzc(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:Lcom/google/android/gms/internal/ads/zzape;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzm:Z

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaot;->zzd(JIJZ)V

    return-void
.end method

.method private final zzg([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:Lcom/google/android/gms/internal/ads/zzape;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzape;->zzd([BII)V

    return-void
.end method

.method private final zzh(JIIJ)V
    .locals 10

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzape;

    .line 1
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzape;->zze(I)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 2
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/ads/zzape;->zze(I)Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzb()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzape;->zzb()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 4
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 5
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 6
    invoke-static {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzgm;->zze([BII)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 7
    invoke-static {v5, v1, v6}, Lcom/google/android/gms/internal/ads/zzgm;->zzh([BII)Lcom/google/android/gms/internal/ads/zzgk;

    move-result-object v5

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzgl;->zza:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzb:I

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzc:I

    .line 8
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzdo;->zza(III)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzt;

    .line 9
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:Ljava/lang/String;

    .line 10
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v9, "video/avc"

    .line 12
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 13
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzgl;->zze:I

    .line 14
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzf:I

    .line 15
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzj:I

    .line 16
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzk:I

    .line 17
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzl:I

    .line 18
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzh:I

    add-int/lit8 v9, v9, 0x8

    .line 19
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzi:I

    add-int/lit8 v9, v9, 0x8

    .line 20
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v6

    .line 22
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzC(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzg:F

    .line 23
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzz(F)Lcom/google/android/gms/internal/ads/zzt;

    .line 24
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzgl;->zzm:I

    .line 25
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzo(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    .line 9
    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    .line 27
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzapq;->zzb(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaot;->zza(Lcom/google/android/gms/internal/ads/zzgl;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    .line 29
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzaot;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzb()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 32
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zze([BII)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzgl;->zzm:I

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzapq;->zzb(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    .line 34
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zza(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzape;->zzb()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 36
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgm;->zzh([BII)Lcom/google/android/gms/internal/ads/zzgk;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    .line 37
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    .line 39
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzape;->zze(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, v0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    .line 40
    invoke-static {p4, v2}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BI)I

    move-result p4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    .line 41
    invoke-virtual {v2, v0, p4}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 42
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    move-wide v0, p5

    .line 43
    invoke-virtual {p4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(JLcom/google/android/gms/internal/ads/zzer;)V

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzk:Z

    .line 44
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaot;->zze(JIZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzm:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzj([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzape;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:Lcom/google/android/gms/internal/ads/zzape;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapq;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaot;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(Lcom/google/android/gms/internal/ads/zzagh;ZZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzj:Lcom/google/android/gms/internal/ads/zzaot;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    and-int/lit8 p1, p3, 0x2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzm:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzm:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 14

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v8

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:[Z

    .line 4
    invoke-static {v8, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzgm;->zzi([BII[Z)I

    move-result v2

    if-eq v2, v7, :cond_3

    add-int/lit8 v3, v2, 0x3

    .line 5
    aget-byte v3, v8, v3

    and-int/lit8 v9, v3, 0x1f

    const/4 v3, 0x3

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    .line 6
    aget-byte v5, v8, v4

    if-nez v5, :cond_0

    const/4 v3, 0x4

    move v11, v3

    move v10, v4

    goto :goto_1

    :cond_0
    move v10, v2

    move v11, v3

    :goto_1
    sub-int v2, v10, v1

    if-lez v2, :cond_1

    .line 7
    invoke-direct {p0, v8, v1, v10}, Lcom/google/android/gms/internal/ads/zzaou;->zzg([BII)V

    :cond_1
    sub-int v3, v7, v10

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    int-to-long v12, v3

    sub-long/2addr v4, v12

    if-gez v2, :cond_2

    neg-int v1, v2

    :goto_2
    move-wide v12, v4

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    move-object v0, p0

    move v4, v1

    move-wide v1, v12

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaou;->zzh(JIIJ)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    move v3, v9

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaou;->zzf(JIJ)V

    add-int v1, v10, v11

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzaou;->zzg([BII)V

    return-void
.end method

.method public final zze(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapq;->zzd()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    const/4 v3, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaou;->zzh(JIIJ)V

    move-object v7, v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    const/16 v10, 0x9

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    .line 4
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzaou;->zzf(JIJ)V

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    const/4 v11, 0x0

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzaou;->zzl:J

    const/4 v10, 0x0

    .line 5
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzaou;->zzh(JIIJ)V

    :cond_0
    return-void
.end method

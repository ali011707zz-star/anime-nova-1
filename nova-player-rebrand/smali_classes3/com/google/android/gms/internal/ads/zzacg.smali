.class public final Lcom/google/android/gms/internal/ads/zzacg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzacs;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbs;

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/ads/zzdn;

.field private zzf:Z

.field private zzg:J

.field private final zzh:Lcom/google/android/gms/internal/ads/zzact;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzb:Lcom/google/android/gms/internal/ads/zzacs;

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzg:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzact;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzact;-><init>(F)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzh:Lcom/google/android/gms/internal/ads/zzact;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdn;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zze:Lcom/google/android/gms/internal/ads/zzdn;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzacg;
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzd:Z

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdn;)Lcom/google/android/gms/internal/ads/zzacg;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zze:Lcom/google/android/gms/internal/ads/zzdn;

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzacg;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzg:J

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaco;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacm;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzacm;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaco;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzaco;-><init>(Lcom/google/android/gms/internal/ads/zzacg;[B)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzf:Z

    return-object v0
.end method

.method final synthetic zze()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzacs;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzb:Lcom/google/android/gms/internal/ads/zzacs;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzbs;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    return-object v0
.end method

.method final synthetic zzh()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzd:Z

    return v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzdn;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zze:Lcom/google/android/gms/internal/ads/zzdn;

    return-object v0
.end method

.method final synthetic zzj()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzg:J

    return-wide v0
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzact;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacg;->zzh:Lcom/google/android/gms/internal/ads/zzact;

    return-object v0
.end method

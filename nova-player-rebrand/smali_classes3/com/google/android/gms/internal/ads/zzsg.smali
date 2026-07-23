.class public final Lcom/google/android/gms/internal/ads/zzsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/ads/zzso;

.field private zzc:Lcom/google/android/gms/internal/ads/zzps;

.field private zzd:Lcom/google/android/gms/internal/ads/zzsm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzso;->zza:Lcom/google/android/gms/internal/ads/zzso;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzso;

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzps;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzps;

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzsg;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzso;

    return-object p0
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzps;)Lcom/google/android/gms/internal/ads/zzsg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzps;

    :cond_0
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzsi;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Lcom/google/android/gms/internal/ads/zzsg;[B)V

    return-object v0
.end method

.method final synthetic zzd()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzps;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzps;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzsm;)Lcom/google/android/gms/internal/ads/zzsg;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    return-object p0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzsm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    return-object v0
.end method

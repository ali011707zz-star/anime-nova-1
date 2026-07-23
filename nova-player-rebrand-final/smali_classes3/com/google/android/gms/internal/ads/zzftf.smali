.class public final Lcom/google/android/gms/internal/ads/zzftf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzftf;


# instance fields
.field private zzb:Ljava/util/Date;

.field private zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzftj;

.field private zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzftj;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzftf;-><init>(Lcom/google/android/gms/internal/ads/zzftj;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzftf;->zza:Lcom/google/android/gms/internal/ads/zzftf;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzftj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzd:Lcom/google/android/gms/internal/ads/zzftj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzftf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftf;->zza:Lcom/google/android/gms/internal/ads/zzftf;

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzb:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzd:Lcom/google/android/gms/internal/ads/zzftj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftj;->zzd(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzftj;->zzg(Lcom/google/android/gms/internal/ads/zzfti;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftj;->zze()V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzftj;->zza:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zze:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzc:Z

    :cond_0
    return-void
.end method

.method public final zzd(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zze:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzb:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzb:Ljava/util/Date;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftf;->zzc:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzg()Lcom/google/android/gms/internal/ads/zzftx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzftf;->zzb()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzftx;->zzn(Ljava/util/Date;)V

    goto :goto_0

    .line 2
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftf;->zze:Z

    return-void
.end method

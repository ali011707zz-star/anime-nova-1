.class public final Lcom/google/android/gms/internal/ads/zzcoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcmc;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcox;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfny;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcpl;

.field private zze:Lcom/google/android/gms/internal/ads/zzfkn;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/internal/ads/zzcoa;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcox;)Lcom/google/android/gms/internal/ads/zzcoa;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzb:Lcom/google/android/gms/internal/ads/zzcox;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcma;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcmc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzb:Lcom/google/android/gms/internal/ads/zzcox;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcox;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfny;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzd:Lcom/google/android/gms/internal/ads/zzcpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzd:Lcom/google/android/gms/internal/ads/zzcpl;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zze:Lcom/google/android/gms/internal/ads/zzfkn;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zze:Lcom/google/android/gms/internal/ads/zzfkn;

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zza:Lcom/google/android/gms/internal/ads/zzcmc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzb:Lcom/google/android/gms/internal/ads/zzcox;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzd:Lcom/google/android/gms/internal/ads/zzcpl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zze:Lcom/google/android/gms/internal/ads/zzfkn;

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/zzcmc;Lcom/google/android/gms/internal/ads/zzcox;Lcom/google/android/gms/internal/ads/zzfny;Lcom/google/android/gms/internal/ads/zzcpl;Lcom/google/android/gms/internal/ads/zzfkn;)V

    return-object v1
.end method

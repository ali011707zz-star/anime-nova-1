.class public final Lcom/google/android/gms/internal/ads/zzase;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzarh;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzash;

.field public zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzash;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzarh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzase;->zzc:Lcom/google/android/gms/internal/ads/zzash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzarh;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzase;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzase;->zzb:Lcom/google/android/gms/internal/ads/zzarh;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzase;->zzc:Lcom/google/android/gms/internal/ads/zzash;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzarh;)Lcom/google/android/gms/internal/ads/zzase;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzase;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzase;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzarh;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzash;)Lcom/google/android/gms/internal/ads/zzase;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzase;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzase;-><init>(Lcom/google/android/gms/internal/ads/zzash;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->zzc:Lcom/google/android/gms/internal/ads/zzash;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

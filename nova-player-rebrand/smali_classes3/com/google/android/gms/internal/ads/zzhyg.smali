.class public final Lcom/google/android/gms/internal/ads/zzhyg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhye;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhye;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhyg;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    return-void
.end method

.method public static zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhyg;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhyg;-><init>(Lcom/google/android/gms/internal/ads/zzhye;)V

    return-object p1
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyg;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhle;->zza(I)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhyg;-><init>(Lcom/google/android/gms/internal/ads/zzhye;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhyg;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p1

    return-object p1
.end method

.method public final zzd()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyg;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zzd()I

    move-result v0

    return v0
.end method

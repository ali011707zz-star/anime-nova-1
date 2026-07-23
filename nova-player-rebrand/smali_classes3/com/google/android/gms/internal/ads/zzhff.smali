.class final synthetic Lcom/google/android/gms/internal/ads/zzhff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhff;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhff;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhff;->zza:Lcom/google/android/gms/internal/ads/zzhff;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfk;->zza:Lcom/google/android/gms/internal/ads/zzhdm;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;-><init>([B)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zza(I)Lcom/google/android/gms/internal/ads/zzhcs;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zzb(I)Lcom/google/android/gms/internal/ads/zzhcs;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zzd(I)Lcom/google/android/gms/internal/ads/zzhcs;

    const/16 v1, 0x10

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zzc(I)Lcom/google/android/gms/internal/ads/zzhcs;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhct;->zzc:Lcom/google/android/gms/internal/ads/zzhct;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zzf(Lcom/google/android/gms/internal/ads/zzhct;)Lcom/google/android/gms/internal/ads/zzhcs;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhcu;->zza:Lcom/google/android/gms/internal/ads/zzhcu;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zze(Lcom/google/android/gms/internal/ads/zzhcu;)Lcom/google/android/gms/internal/ads/zzhcs;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhcs;->zzg()Lcom/google/android/gms/internal/ads/zzhcv;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/zzhmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhmv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhmv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmv;->zza:Lcom/google/android/gms/internal/ads/zzhmv;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmx;->zza:Lcom/google/android/gms/internal/ads/zzhmk;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlu;-><init>([B)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlu;->zza(I)Lcom/google/android/gms/internal/ads/zzhlu;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlu;->zzb(I)Lcom/google/android/gms/internal/ads/zzhlu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlv;->zza:Lcom/google/android/gms/internal/ads/zzhlv;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlu;->zzc(Lcom/google/android/gms/internal/ads/zzhlv;)Lcom/google/android/gms/internal/ads/zzhlu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlu;->zzd()Lcom/google/android/gms/internal/ads/zzhlw;

    move-result-object v0

    return-object v0
.end method

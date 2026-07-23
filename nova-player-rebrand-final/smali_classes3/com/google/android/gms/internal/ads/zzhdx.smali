.class final synthetic Lcom/google/android/gms/internal/ads/zzhdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhdx;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdx;->zza:Lcom/google/android/gms/internal/ads/zzhdx;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzheb;

    sget v0, Lcom/google/android/gms/internal/ads/zzhdz;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzheb;->zzc()Lcom/google/android/gms/internal/ads/zzhea;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzd(Lcom/google/android/gms/internal/ads/zzhea;Lcom/google/android/gms/internal/ads/zzhyg;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object p1

    return-object p1
.end method

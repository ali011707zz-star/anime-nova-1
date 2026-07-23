.class final synthetic Lcom/google/android/gms/internal/ads/zzhdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhdr;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdr;->zza:Lcom/google/android/gms/internal/ads/zzhdr;

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
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhdv;

    sget v0, Lcom/google/android/gms/internal/ads/zzhds;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdn;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhdn;->zza(Lcom/google/android/gms/internal/ads/zzhdv;)Lcom/google/android/gms/internal/ads/zzhdn;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhdn;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhdn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhdv;->zzc()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhdn;->zzb(Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhdn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhdn;->zzd()Lcom/google/android/gms/internal/ads/zzhdo;

    move-result-object p1

    return-object p1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/zzym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzym;->zza:Lcom/google/android/gms/internal/ads/zzym;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbg;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzyn;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbg;->zzc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

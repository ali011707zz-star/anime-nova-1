.class final Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;
.super Lcoil/memory/HardwareBitmapService;
.source "HardwareBitmapService.kt"


# static fields
.field public static final INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

.field private static volatile decodesSinceLastFileDescriptorCheck:I

.field private static final fileDescriptorList:Ljava/io/File;

.field private static volatile hasAvailableFileDescriptors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    invoke-direct {v0}, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;-><init>()V

    sput-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->fileDescriptorList:Ljava/io/File;

    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcoil/memory/HardwareBitmapService;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final declared-synchronized hasAvailableFileDescriptors(Lcoil/util/Logger;)Z
    .locals 4

    monitor-enter p0

    .line 76
    :try_start_0
    sget v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 77
    sput v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    .line 79
    sget-object v1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->fileDescriptorList:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 79
    :goto_0
    array-length v1, v1

    const/16 v2, 0x2ee

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 80
    :cond_1
    sput-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    .line 82
    sget-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    const-string v0, "LimitedFileDescriptorHardwareBitmapService"

    .line 22
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 84
    const-string v2, "Unable to allocate more hardware bitmaps. Number of used file descriptors: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    sget-boolean p1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z
    .locals 2

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lcoil/size/PixelSize;

    if-eqz v0, :cond_1

    check-cast p1, Lcoil/size/PixelSize;

    invoke-virtual {p1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v0

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcoil/size/PixelSize;->getHeight()I

    move-result p1

    if-ge p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_1
    invoke-direct {p0, p2}, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors(Lcoil/util/Logger;)Z

    move-result p1

    return p1
.end method

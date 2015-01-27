.class public Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
.super Landroid/widget/FrameLayout;
.source "WorldClockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;
    }
.end annotation


# static fields
.field private static final ADD_LAYOUT_TAG:Ljava/lang/String; = "add_world_clock_tag"

.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final DELETE_ANIMATION_DURATION:I = 0x96

.field static final FAKE_IMAGE_TAG:Ljava/lang/String; = "fake_img"

.field static final FROM_CURRENT_PAGE:I = 0x1

.field static final FROM_LEFT_PAGE:I = 0x0

.field static final FROM_RIGHT_PAGE:I = 0x2

.field private static final KEY_CLICK_DEL_WORLD_CLOCK_GUIDE_SHOWED:Ljava/lang/String; = "click_del_world_clock_guide_showed"

.field private static final KEY_SINLE_WORLD_CLOCK_GUIDE_SHOWED:Ljava/lang/String; = "single_world_clock_guide_showed"

.field private static final MAX_RECENT_TASKS:I = 0x18

.field private static final MSG_ANIMATION:I = 0x1

.field private static final MSG_ANIMATION_STOP_ALL:I = 0x2

.field private static final NUM_BUTTONS:I = 0xc

.field static final POSITION_FIRST:I = 0x0

.field static final POSITION_SECOND:I = 0x1

.field static final POSITION_THIRD:I = 0x2

.field static final SCROLL_PAGE_TYPE_NEXT:I = 0x0

.field static final SCROLL_PAGE_TYPE_PREV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecentApplicationsDialog"

.field private static final WORLD_CLOCK_CITYCODE_BEIJING:Ljava/lang/String; = "Beijing"

.field public static sLongClickLocker:Z


# instance fields
.field isChild1Add:Z

.field isChild2Add:Z

.field isChild3Add:Z

.field final mAddLayouts:[Landroid/widget/FrameLayout;

.field private mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mChangeStatusBarThemeListener:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;

.field final mCitiesIds:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentPageIndex:I

.field private mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

.field private mCurrentView:Landroid/view/View;

.field final mDateTexts:[Landroid/widget/TextView;

.field private mDeleteAnimationLock:Z

.field private mDeleteLock:Ljava/lang/Object;

.field private mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

.field mDragLayer:Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;

.field private mDrawingView:Landroid/view/View;

.field private mFakeAnimationImage:Landroid/widget/ImageView;

.field private mFinalindex:I

.field private mGroup:Landroid/view/ViewGroup;

.field final mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

.field private final mHandler:Landroid/os/Handler;

.field final mIcons:[Landroid/widget/TextView;

.field final mImageViews:[Landroid/view/ViewGroup;

.field private mIsDraging:Z

.field final mLinearLayouts:[Landroid/widget/LinearLayout;

.field private mNeedUnDeleteAnim:Z

.field private mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

.field private mRecentLayout:Landroid/widget/LinearLayout;

.field private mReleaseRunnable:Ljava/lang/Runnable;

.field private mScrollPageLocker:Z

.field private mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

.field private mSingleWorldClockAddIcon:Landroid/widget/ImageView;

.field private mSingleWorldClockLayout:Landroid/widget/RelativeLayout;

.field private mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

.field mWorldClockItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;",
            ">;"
        }
    .end annotation
.end field

.field netView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->sLongClickLocker:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    .line 71
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    .line 72
    new-array v0, v2, [Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 73
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    .line 74
    new-array v0, v2, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    .line 75
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    .line 77
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 86
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 87
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 128
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    .line 152
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    .line 871
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 872
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDrawingView:Landroid/view/View;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteLock:Ljava/lang/Object;

    .line 877
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    .line 878
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1351
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    .line 1414
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    .line 2394
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    .line 2395
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    .line 108
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->initView()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    .line 71
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    .line 72
    new-array v0, v2, [Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 73
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    .line 74
    new-array v0, v2, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    .line 75
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    .line 77
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 86
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 87
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 128
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    .line 152
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    .line 871
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 872
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDrawingView:Landroid/view/View;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteLock:Ljava/lang/Object;

    .line 877
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    .line 878
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1351
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    .line 1414
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    .line 2394
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    .line 2395
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    .line 114
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->initView()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    .line 71
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    .line 72
    new-array v0, v2, [Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 73
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    .line 74
    new-array v0, v2, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    .line 75
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    .line 77
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 86
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 87
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 128
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    .line 152
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$1;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$2;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    .line 871
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 872
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDrawingView:Landroid/view/View;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteLock:Ljava/lang/Object;

    .line 877
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    .line 878
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1351
    new-instance v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$9;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    .line 1414
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    .line 2394
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    .line 2395
    iput-boolean v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    .line 120
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->initView()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;)Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
    .param p1, "x1"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->showAddSigleWorldClockGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->showAddOrDelWorldClockGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setAllClockVisable()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->releaseFakeAnimationImage()V

    return-void
.end method

.method static synthetic access$802(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    return p1
.end method

.method static synthetic access$902(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    return p1
.end method

.method private addPageIndicator()V
    .locals 4

    .prologue
    .line 765
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 766
    .local v0, "child":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->addView(Landroid/view/View;)V

    .line 767
    return-void
.end method

.method private addWorkspace1()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 671
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addPageIndicator()V

    .line 672
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 673
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 674
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 676
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3, v0, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v5, 0x3

    const v3, 0x7f0b012b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 678
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    const v3, 0x7f0b012c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 679
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v5, 0x5

    const v3, 0x7f0b012d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 681
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 682
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_0
    const/4 v1, 0x3

    :goto_1
    if-ge v1, v6, :cond_2

    .line 686
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0130

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v1

    .line 690
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b00d9

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 692
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0131

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    aput-object v3, v4, v1

    .line 693
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0133

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 699
    :cond_2
    return-void
.end method

.method private addWorkspace2()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 702
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addPageIndicator()V

    .line 703
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 704
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 705
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 707
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3, v0, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v5, 0x6

    const v3, 0x7f0b012b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 709
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v5, 0x7

    const v3, 0x7f0b012c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 710
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    const v3, 0x7f0b012d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 712
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 713
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    const/4 v1, 0x6

    :goto_1
    if-ge v1, v6, :cond_2

    .line 717
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0130

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v1

    .line 721
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b00d9

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 723
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0131

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    aput-object v3, v4, v1

    .line 724
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    .line 725
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0133

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 730
    :cond_2
    return-void
.end method

.method private addWorkspace3()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 733
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addPageIndicator()V

    .line 734
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 735
    .local v0, "child":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 736
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 738
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3, v0, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/16 v5, 0x9

    const v3, 0x7f0b012b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 740
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/16 v5, 0xa

    const v3, 0x7f0b012c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 741
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/16 v5, 0xb

    const v3, 0x7f0b012d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 743
    const/16 v1, 0x9

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 744
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_0
    const/16 v1, 0x9

    :goto_1
    if-ge v1, v6, :cond_2

    .line 748
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0130

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v1

    .line 752
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b00d9

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 754
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0131

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    aput-object v3, v4, v1

    .line 755
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    .line 756
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v5, 0x7f0b0133

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    :cond_2
    return-void
.end method

.method private animateShow()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 361
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 362
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 363
    .local v2, "trans":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fe00000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 366
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 367
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 368
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 369
    new-instance v3, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$5;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$5;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 393
    return-void

    .line 362
    nop

    :array_0
    .array-data 4
        0x425c0000
        0x0
    .end array-data

    .line 365
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private animiationPerformance()V
    .locals 17

    .prologue
    .line 1470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 1471
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->deletePreparation()V

    .line 1472
    const/4 v5, 0x0

    .line 1474
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    if-nez v13, :cond_0

    const-string v13, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1476
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    .line 1479
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    if-nez v13, :cond_3

    :cond_1
    const-string v13, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1481
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    .line 1556
    .end local v5    # "duration":I
    :cond_2
    :goto_0
    return-void

    .line 1495
    .restart local v5    # "duration":I
    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    .line 1496
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v10, "translateAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/TranslateAnimation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v3, "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCount:I

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_6

    .line 1499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1500
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_5

    .line 1498
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1501
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1502
    .local v8, "taskDescription":Ljava/lang/Object;
    if-eqz v8, :cond_4

    .line 1503
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1504
    .local v1, "animation":Landroid/view/animation/TranslateAnimation;
    const/16 v13, 0xc8

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1505
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1508
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "taskDescription":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1509
    .local v11, "translateCount":I
    if-lez v11, :cond_8

    .line 1510
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v11, :cond_8

    .line 1511
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/TranslateAnimation;

    .line 1512
    .restart local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1516
    .restart local v2    # "child":Landroid/view/View;
    add-int/lit8 v13, v11, -0x1

    if-ne v7, v13, :cond_7

    .line 1518
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->requestWorkspace(Z)V

    .line 1510
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1540
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "j":I
    :cond_8
    if-nez v11, :cond_2

    .line 1541
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isLastWorkspace()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    .line 1544
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    const v14, 0x7f0b0130

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 1546
    .local v12, "view2":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    const v14, 0x7f0b00d9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1547
    .local v9, "textView2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    const v14, 0x7f0b0133

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1549
    .local v4, "dateText":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1550
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->requestWorkspace(Z)V

    goto/16 :goto_0
.end method

.method private clearData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 408
    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 409
    iput-boolean v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 411
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v0

    .line 413
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 414
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeViewAt(I)V

    .line 413
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 417
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildCount()I

    move-result v0

    .line 419
    add-int/lit8 v2, v0, -0x1

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    .line 420
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v3, v2}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removeViewAt(I)V

    .line 419
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 424
    :cond_1
    return-void
.end method

.method private deletePreparation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1419
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->lockClockRefresh()V

    .line 1421
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v7, v9}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setTextVisiable(Landroid/view/View;I)V

    .line 1422
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    const v8, 0x7f0b0130

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1423
    .local v2, "deleteGroup":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .line 1424
    .local v6, "mhv":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 1425
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "mhv":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    check-cast v6, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 1427
    .restart local v6    # "mhv":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    :cond_0
    if-eqz v6, :cond_1

    .line 1428
    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->clearTextView()V

    .line 1430
    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->releaseRunnable()V

    .line 1431
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aget-object v7, v7, v9

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_3

    .line 1432
    const/4 v6, 0x0

    .line 1433
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    const/4 v8, 0x0

    aput-object v8, v7, v9

    .line 1434
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1448
    :cond_1
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1450
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1452
    .local v1, "count":I
    const/4 v5, 0x0

    .line 1454
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    if-lt v4, v5, :cond_6

    .line 1455
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1456
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 1454
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1436
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 1437
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aget-object v7, v7, v4

    if-ne v7, v6, :cond_4

    .line 1438
    :goto_2
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    add-int/lit8 v8, v4, 0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_1

    .line 1439
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    add-int/lit8 v9, v4, 0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v4

    .line 1440
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1436
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1459
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v3    # "group":Landroid/view/ViewGroup;
    .restart local v5    # "index":I
    :cond_5
    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-ne v0, v7, :cond_2

    .line 1460
    move v5, v4

    .line 1464
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    iput v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .line 1465
    iput-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    .line 1466
    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCount:I

    .line 1467
    return-void
.end method

.method private differentPageDeleteAnimation(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 22
    .param p1, "fakeBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "releaseView"    # Landroid/view/View;

    .prologue
    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v4

    .line 2482
    .local v4, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x3

    add-int/lit8 v19, v19, -0x1

    aget-object v6, v18, v19

    .line 2483
    .local v6, "lastPageView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x3

    aget-object v8, v18, v19

    .line 2484
    .local v8, "leftView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x3

    add-int/lit8 v19, v19, 0x1

    aget-object v11, v18, v19

    .line 2485
    .local v11, "middleView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v4, 0x3

    add-int/lit8 v19, v19, 0x2

    aget-object v15, v18, v19

    .line 2487
    .local v15, "rightView":Landroid/widget/LinearLayout;
    const-string v18, "add_world_clock_tag"

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setCurrentPageWhileScrollFinished(ILjava/lang/Runnable;)V

    .line 2571
    :cond_0
    :goto_0
    return-void

    .line 2493
    :cond_1
    const/4 v7, 0x0

    .line 2494
    .local v7, "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/4 v10, 0x0

    .line 2495
    .local v10, "middleAnimation":Landroid/view/animation/TranslateAnimation;
    const/4 v14, 0x0

    .line 2496
    .local v14, "rightAnimation":Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x0

    .line 2498
    .local v5, "lastAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v16, 0x0

    .line 2500
    .local v16, "tempImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v4, :cond_8

    const/4 v12, 0x1

    .line 2501
    .local v12, "moveToRight":Z
    :goto_1
    const/16 v17, 0x0

    .line 2502
    .local v17, "topPadding":F
    if-lez v4, :cond_2

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c02d4

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 2510
    :cond_2
    new-instance v16, Landroid/widget/ImageView;

    .end local v16    # "tempImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2511
    .restart local v16    # "tempImage":Landroid/widget/ImageView;
    const-string v18, "fake_img"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2512
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v19

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v20

    invoke-direct/range {v18 .. v20}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2513
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2514
    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2515
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addView(Landroid/view/View;I)V

    .line 2516
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2518
    .local v13, "paddingParent":Landroid/view/View;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "lastAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getX()F

    move-result v18

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v17

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v17

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2520
    .restart local v5    # "lastAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    .end local v7    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2521
    .restart local v7    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 2522
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .end local v10    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2524
    .restart local v10    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_3
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 2525
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    .end local v14    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2528
    .restart local v14    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v9, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$11;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$11;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    .line 2551
    .local v9, "listener":Landroid/view/animation/Animation$AnimationListener;
    if-eqz v5, :cond_5

    .line 2552
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2553
    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2554
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2556
    :cond_5
    if-eqz v7, :cond_6

    .line 2557
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2558
    invoke-virtual {v7, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2559
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2561
    :cond_6
    if-eqz v10, :cond_7

    .line 2562
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2563
    invoke-virtual {v10, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2564
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2566
    :cond_7
    if-eqz v14, :cond_0

    .line 2567
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2568
    invoke-virtual {v14, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2569
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2500
    .end local v9    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .end local v12    # "moveToRight":Z
    .end local v13    # "paddingParent":Landroid/view/View;
    .end local v17    # "topPadding":F
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private exchangeViewContent(Landroid/view/View;Landroid/view/View;)V
    .locals 22
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "rightView"    # Landroid/view/View;

    .prologue
    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_1

    .line 2978
    :cond_0
    :goto_0
    return-void

    .line 2861
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 2862
    .local v8, "leftTag":Ljava/lang/Object;
    const v20, 0x7f0b0130

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2863
    .local v3, "leftClockLayout":Landroid/view/ViewGroup;
    const v20, 0x7f0b00d9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2864
    .local v10, "leftTextView":Landroid/widget/TextView;
    const v20, 0x7f0b0133

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2866
    .local v6, "leftDateText":Landroid/widget/TextView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 2867
    .local v4, "leftClockView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    if-eqz v4, :cond_0

    .line 2870
    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->clearTextView()V

    .line 2872
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2873
    .local v9, "leftTextStr":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2877
    .local v5, "leftDateStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 2878
    .local v16, "rightTag":Ljava/lang/Object;
    const v20, 0x7f0b0130

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 2879
    .local v11, "rightClockLayout":Landroid/view/ViewGroup;
    const v20, 0x7f0b00d9

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2880
    .local v18, "rightTextView":Landroid/widget/TextView;
    const v20, 0x7f0b0133

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2882
    .local v14, "rightDateText":Landroid/widget/TextView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 2883
    .local v12, "rightClockView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    if-eqz v12, :cond_0

    .line 2886
    invoke-virtual {v12}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->clearTextView()V

    .line 2888
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2889
    .local v17, "rightTextStr":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2894
    .local v13, "rightDateStr":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2895
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2897
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2898
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2902
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2903
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2906
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2907
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2908
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2909
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2910
    invoke-virtual {v4, v14}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 2911
    invoke-virtual {v12, v6}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 2915
    const-string v20, "INVISIBLE"

    invoke-virtual {v10}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 2916
    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2917
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2919
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2920
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2937
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2938
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2940
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2941
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2945
    const/4 v7, -0x1

    .line 2946
    .local v7, "leftIndex":I
    const/4 v15, -0x1

    .line 2947
    .local v15, "rightIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_4

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v8, v0, :cond_2

    .line 2949
    move v7, v2

    .line 2951
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2952
    move v15, v2

    .line 2954
    :cond_3
    if-ltz v7, :cond_9

    if-ltz v15, :cond_9

    .line 2955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    check-cast v16, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .end local v16    # "rightTag":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    check-cast v8, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .end local v8    # "leftTag":Ljava/lang/Object;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2962
    :cond_4
    const/4 v7, -0x1

    .line 2963
    const/4 v15, -0x1

    .line 2964
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    aget-object v20, v20, v2

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_5

    .line 2966
    move v7, v2

    .line 2968
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    aget-object v20, v20, v2

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 2969
    move v15, v2

    .line 2971
    :cond_6
    if-ltz v7, :cond_a

    if-ltz v15, :cond_a

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    aget-object v19, v20, v7

    .line 2973
    .local v19, "tempView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v21, v0

    aget-object v21, v21, v15

    aput-object v21, v20, v7

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v20, v0

    aput-object v19, v20, v15

    goto/16 :goto_0

    .line 2922
    .end local v2    # "i":I
    .end local v7    # "leftIndex":I
    .end local v15    # "rightIndex":I
    .end local v19    # "tempView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    .restart local v8    # "leftTag":Ljava/lang/Object;
    .restart local v16    # "rightTag":Ljava/lang/Object;
    :cond_7
    const-string v20, "INVISIBLE"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2923
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2924
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2926
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2927
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2930
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2931
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2933
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2934
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2947
    .restart local v2    # "i":I
    .restart local v7    # "leftIndex":I
    .restart local v15    # "rightIndex":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2964
    .end local v8    # "leftTag":Ljava/lang/Object;
    .end local v16    # "rightTag":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method private getCurrentGroupIndex(Landroid/view/ViewGroup;)I
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1795
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 1796
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1797
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v3, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1798
    .local v0, "child":Landroid/view/ViewGroup;
    if-ne v0, p1, :cond_0

    .line 1802
    .end local v0    # "child":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 1796
    .restart local v0    # "child":Landroid/view/ViewGroup;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1802
    .end local v0    # "child":Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCurrentViewIndex()I
    .locals 6

    .prologue
    .line 1777
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 1779
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1780
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v5, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1782
    .local v0, "child":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    if-ne v0, v5, :cond_1

    .line 1783
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1784
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1785
    .local v3, "insideView":Landroid/view/View;
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-ne v3, v5, :cond_0

    .line 1786
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v4

    .line 1791
    .end local v0    # "child":Landroid/view/ViewGroup;
    .end local v3    # "insideView":Landroid/view/View;
    .end local v4    # "j":I
    :goto_2
    return v5

    .line 1783
    .restart local v0    # "child":Landroid/view/ViewGroup;
    .restart local v3    # "insideView":Landroid/view/View;
    .restart local v4    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1779
    .end local v3    # "insideView":Landroid/view/View;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1791
    .end local v0    # "child":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private getLeftFakeImage()Landroid/view/View;
    .locals 4

    .prologue
    .line 2472
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 2473
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v3, v0, 0x3

    aget-object v1, v2, v3

    .line 2474
    .local v1, "leftView":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 2475
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 2476
    return-object v1
.end method

.method private getWorldClocksFromDB()V
    .locals 19

    .prologue
    .line 2100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    .line 2102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2104
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 2105
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2107
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2108
    .local v13, "id":I
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2109
    .local v8, "cityName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2110
    .local v7, "cityCode":Ljava/lang/String;
    invoke-static {v7}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->formatCityAndCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2111
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2112
    .local v17, "timeZone":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2113
    .local v10, "countryName":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2114
    .local v9, "countryCode":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2115
    .local v18, "timeZoneID":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2117
    .local v16, "sortIndex":I
    new-instance v14, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-direct {v14}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;-><init>()V

    .line 2118
    .local v14, "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    invoke-virtual {v14, v13}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setId(I)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f060000

    const-string v3, "city"

    invoke-static {v1, v2, v7, v3}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->getXmlResStr(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2120
    .local v12, "finalCityName":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2121
    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2123
    :cond_1
    const-string v1, "%"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2124
    const-string v1, "%"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2126
    :cond_2
    invoke-virtual {v14, v12}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCityName(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v14, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCityCode(Ljava/lang/String;)V

    .line 2128
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setTimeZone(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v14, v10}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCountryName(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v14, v9}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCountryCode(Ljava/lang/String;)V

    .line 2131
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setTimeZoneID(Ljava/lang/String;)V

    .line 2132
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setSortIndex(I)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 2137
    .end local v7    # "cityCode":Ljava/lang/String;
    .end local v8    # "cityName":Ljava/lang/String;
    .end local v9    # "countryCode":Ljava/lang/String;
    .end local v10    # "countryName":Ljava/lang/String;
    .end local v12    # "finalCityName":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v14    # "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v16    # "sortIndex":I
    .end local v17    # "timeZone":Ljava/lang/String;
    .end local v18    # "timeZoneID":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 2138
    .local v15, "retry":I
    :cond_4
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_5

    .line 2139
    const/16 v1, 0xa

    if-lt v15, v1, :cond_7

    .line 2151
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2153
    .end local v15    # "retry":I
    :cond_6
    return-void

    .line 2142
    .restart local v15    # "retry":I
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2143
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2145
    .restart local v13    # "id":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 2147
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method

.method private isDifferentPage()I
    .locals 6

    .prologue
    .line 2427
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 2429
    .local v0, "currentPage":I
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v5, v0, 0x3

    aget-object v1, v4, v5

    .line 2430
    .local v1, "leftView":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v2, v4, v5

    .line 2431
    .local v2, "middleView":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v3, v4, v5

    .line 2433
    .local v3, "rightView":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-ne v3, v4, :cond_1

    .line 2434
    :cond_0
    const/4 v4, 0x1

    .line 2439
    :goto_0
    return v4

    .line 2436
    :cond_1
    iget v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    if-le v4, v0, :cond_2

    .line 2437
    const/4 v4, 0x2

    goto :goto_0

    .line 2439
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isDifferentPageData()I
    .locals 10

    .prologue
    .line 2445
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v1

    .line 2447
    .local v1, "currentPage":I
    mul-int/lit8 v3, v1, 0x3

    .line 2448
    .local v3, "leftEdge":I
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v6, v8, 0x2

    .line 2449
    .local v6, "rightEdge":I
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v9, v1, 0x3

    aget-object v4, v8, v9

    .line 2450
    .local v4, "leftView":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    aget-object v5, v8, v9

    .line 2451
    .local v5, "middleView":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x2

    aget-object v7, v8, v9

    .line 2453
    .local v7, "rightView":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-eq v4, v8, :cond_0

    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-eq v5, v8, :cond_0

    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    if-ne v7, v8, :cond_1

    .line 2454
    :cond_0
    const/4 v8, 0x1

    .line 2467
    :goto_0
    return v8

    .line 2457
    :cond_1
    const/4 v0, 0x0

    .line 2458
    .local v0, "currentIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 2459
    iget-object v8, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    iget-object v9, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v9, v9, v2

    if-ne v8, v9, :cond_3

    .line 2460
    move v0, v2

    .line 2464
    :cond_2
    if-ge v0, v3, :cond_4

    .line 2465
    const/4 v8, 0x0

    goto :goto_0

    .line 2458
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2467
    :cond_4
    const/4 v8, 0x2

    goto :goto_0
.end method

.method private isLastWorkspace()Z
    .locals 5

    .prologue
    .line 1757
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 1760
    .local v1, "count":I
    const/4 v3, 0x0

    .line 1762
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1763
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1765
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    if-ne v0, v4, :cond_1

    .line 1766
    move v3, v2

    .line 1770
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_2

    .line 1771
    const/4 v4, 0x1

    .line 1773
    :goto_1
    return v4

    .line 1762
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1773
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private leftTreeView(Landroid/view/View;)V
    .locals 7
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    .line 3029
    const/4 v2, -0x1

    .line 3030
    .local v2, "startIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3031
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 3032
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3033
    move v2, v0

    .line 3037
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3055
    :cond_1
    :goto_1
    return-void

    .line 3030
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3041
    :cond_3
    const/4 v1, 0x0

    .line 3045
    .local v1, "outOfIndex":Z
    :cond_4
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-eq v3, p1, :cond_5

    .line 3046
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 3047
    add-int/lit8 v2, v2, 0x1

    .line 3048
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_4

    .line 3049
    const/4 v1, 0x1

    .line 3053
    :cond_5
    if-nez v1, :cond_1

    const-string v3, "add_world_clock_tag"

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3054
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private lockClockRefresh()V
    .locals 2

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    invoke-virtual {v1}, Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;->lockRefreshForMoment()V

    .line 2374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2375
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2376
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->lockRefreshForMoment()V

    .line 2374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2379
    :cond_1
    return-void
.end method

.method private markDataOnLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3080
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    aput-object v4, v2, v0

    .line 3079
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3082
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3083
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 3093
    :cond_1
    return-void

    .line 3086
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 3087
    .local v1, "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    if-nez v1, :cond_3

    .line 3088
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    aput-object v4, v2, v0

    .line 3082
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3090
    :cond_3
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2
.end method

.method private notifyChangeStatusBarTheme(Z)V
    .locals 1
    .param p1, "isDarkTheme"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mChangeStatusBarThemeListener:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mChangeStatusBarThemeListener:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;

    invoke-interface {v0, p1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;->changeStatusTheme(Z)V

    .line 358
    :cond_0
    return-void
.end method

.method private releaseFakeAnimationImage()V
    .locals 1

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeFakeImage()V

    .line 1363
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 1369
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1370
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->clearAnimationSet()V

    .line 1371
    return-void
.end method

.method private reloadButtons()V
    .locals 23

    .prologue
    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->clearData()V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 432
    .local v5, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 433
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 435
    .local v14, "numTasks":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_6

    const/16 v18, 0xc

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 437
    if-ge v8, v14, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 439
    .local v16, "taskDescription":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 441
    .local v4, "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v10, v0, :cond_2

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace1()V

    .line 451
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v13, v18, v10

    .line 452
    .local v13, "lr":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v17, v18, v10

    .line 453
    .local v17, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v9, v18, v10

    .line 454
    .local v9, "ig":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v6, v18, v10

    .line 458
    .local v6, "dtv":Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 476
    .local v12, "isDayTime":Z
    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->formatOtherWorldTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->isNowDayTime(Ljava/lang/String;)Z

    move-result v12

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 484
    .local v11, "inflater":Landroid/view/LayoutInflater;
    if-eqz v12, :cond_4

    const v18, 0x7f030023

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aput-object v18, v19, v8

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setCurrentTimezone(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setDayTime(Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 494
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 496
    if-nez v10, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c02ca

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 498
    .local v15, "paddingPX":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 503
    .end local v15    # "paddingPX":I
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 505
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 511
    .end local v4    # "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v6    # "dtv":Landroid/widget/TextView;
    .end local v9    # "ig":Landroid/view/ViewGroup;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "isDayTime":Z
    .end local v13    # "lr":Landroid/widget/LinearLayout;
    .end local v16    # "taskDescription":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v17    # "tv":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 435
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 443
    .restart local v4    # "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .restart local v16    # "taskDescription":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    :cond_2
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace2()V

    goto/16 :goto_1

    .line 445
    :cond_3
    const/16 v18, 0x9

    move/from16 v0, v18

    if-lt v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace3()V

    goto/16 :goto_1

    .line 484
    .restart local v6    # "dtv":Landroid/widget/TextView;
    .restart local v9    # "ig":Landroid/view/ViewGroup;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "isDayTime":Z
    .restart local v13    # "lr":Landroid/widget/LinearLayout;
    .restart local v17    # "tv":Landroid/widget/TextView;
    :cond_4
    const v18, 0x7f030024

    goto/16 :goto_2

    .line 500
    :cond_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 516
    .end local v4    # "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v6    # "dtv":Landroid/widget/TextView;
    .end local v9    # "ig":Landroid/view/ViewGroup;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "isDayTime":Z
    .end local v13    # "lr":Landroid/widget/LinearLayout;
    .end local v16    # "taskDescription":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v17    # "tv":Landroid/widget/TextView;
    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v10, v0, :cond_9

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace1()V

    .line 526
    :cond_7
    :goto_4
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeWorkspace(I)V

    .line 528
    if-nez v14, :cond_e

    .line 529
    const/4 v10, 0x0

    :goto_5
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ge v10, v0, :cond_13

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    if-eqz v18, :cond_8

    .line 531
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const-string v19, "add_world_clock_tag"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0159

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 518
    :cond_9
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace2()V

    goto/16 :goto_4

    .line 520
    :cond_a
    const/16 v18, 0x9

    move/from16 v0, v18

    if-lt v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace3()V

    goto/16 :goto_4

    .line 539
    :cond_b
    if-nez v10, :cond_c

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const-string v19, "add_world_clock_tag"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 548
    :cond_c
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 551
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_7

    .line 562
    :cond_e
    const/4 v7, 0x0

    .line 563
    .local v7, "finishFirst":Z
    :goto_8
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ge v10, v0, :cond_13

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    if-eqz v18, :cond_f

    .line 565
    if-nez v7, :cond_11

    .line 566
    const/4 v7, 0x1

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const-string v19, "add_world_clock_tag"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 568
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_10

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c02ca

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 570
    .restart local v15    # "paddingPX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 574
    .end local v15    # "paddingPX":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0159

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 563
    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 572
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_9

    .line 581
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_12

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 587
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 585
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 595
    .end local v7    # "finishFirst":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mBuildLayersRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->post(Ljava/lang/Runnable;)Z

    .line 596
    return-void
.end method

.method private removeEmptyCellLayout()V
    .locals 17

    .prologue
    .line 2005
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v15}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 2006
    .local v1, "count":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    .local v9, "removeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    .local v10, "removeArrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 2010
    .local v2, "currentPage":I
    const/4 v5, -0x1

    .line 2012
    .local v5, "firstDeletePage":I
    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_2

    .line 2013
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v15, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 2015
    .local v13, "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v15, v6}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2017
    .local v14, "viewGroup2":Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2019
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 2021
    .local v11, "taskDescription":Ljava/lang/Object;
    if-nez v11, :cond_1

    .line 2022
    const/4 v15, -0x1

    if-ne v5, v15, :cond_0

    .line 2023
    move v5, v6

    .line 2025
    :cond_0
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    move v2, v6

    .line 2012
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2031
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v11    # "taskDescription":Ljava/lang/Object;
    .end local v13    # "viewGroup":Landroid/view/ViewGroup;
    .end local v14    # "viewGroup2":Landroid/view/View;
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2033
    .local v4, "deleteCount":I
    const/4 v15, 0x3

    if-ne v5, v15, :cond_7

    .line 2034
    const/4 v15, 0x3

    if-ne v4, v15, :cond_5

    .line 2035
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 2036
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 2037
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 2057
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v15}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v3

    .line 2059
    .local v3, "currentPageWorkspace":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2060
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_b

    .line 2061
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2062
    .local v12, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_4

    .line 2063
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    add-int/lit8 v16, v2, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 2065
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v15, v12}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 2038
    .end local v3    # "currentPageWorkspace":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "view":Landroid/view/View;
    :cond_5
    const/4 v15, 0x2

    if-ne v4, v15, :cond_6

    .line 2039
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 2040
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    goto :goto_1

    .line 2041
    :cond_6
    const/4 v15, 0x1

    if-ne v4, v15, :cond_3

    .line 2042
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    goto :goto_1

    .line 2044
    :cond_7
    const/4 v15, 0x2

    if-ne v5, v15, :cond_9

    .line 2045
    const/4 v15, 0x2

    if-ne v4, v15, :cond_8

    .line 2046
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 2047
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    goto :goto_1

    .line 2048
    :cond_8
    const/4 v15, 0x1

    if-ne v4, v15, :cond_3

    .line 2049
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    goto :goto_1

    .line 2051
    :cond_9
    const/4 v15, 0x1

    if-ne v5, v15, :cond_3

    .line 2052
    const/4 v15, 0x1

    if-ne v4, v15, :cond_3

    .line 2053
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    goto :goto_1

    .line 2060
    .restart local v3    # "currentPageWorkspace":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2068
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2069
    .restart local v12    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v15, v12}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 2071
    .end local v12    # "view":Landroid/view/View;
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2072
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_f

    .line 2073
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2074
    .restart local v12    # "view":Landroid/view/View;
    if-eqz v2, :cond_d

    if-ne v2, v3, :cond_d

    .line 2075
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    add-int/lit8 v16, v2, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setCurrentPage(I)V

    .line 2077
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v15, v12}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 2072
    .end local v12    # "view":Landroid/view/View;
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2086
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v15}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->requestLayout()V

    .line 2087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v15}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->invalidate()V

    .line 2089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_10

    .line 2090
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setVisibility(I)V

    .line 2095
    :goto_7
    return-void

    .line 2092
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setVisibility(I)V

    goto :goto_7
.end method

.method private removeWorkspace(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 600
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    .line 601
    .local v3, "workspace":Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    .line 603
    .local v1, "pageIndicator":Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;
    if-gt p1, v6, :cond_5

    .line 604
    invoke-virtual {v3, v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v3, v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeViewAt(I)V

    .line 606
    iput-boolean v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    .line 608
    :cond_0
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 609
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeViewAt(I)V

    .line 610
    iput-boolean v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 617
    :cond_1
    invoke-virtual {v1, v8}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 618
    invoke-virtual {v1, v8}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removePage(I)V

    .line 620
    :cond_2
    invoke-virtual {v1, v5}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 621
    invoke-virtual {v1, v5}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removePage(I)V

    .line 628
    :cond_3
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 629
    invoke-virtual {v1, v7}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setCurrentPage(I)V

    .line 662
    :cond_4
    :goto_0
    if-gt p1, v6, :cond_b

    .line 663
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setVisibility(I)V

    .line 668
    :goto_1
    return-void

    .line 630
    :cond_5
    if-le p1, v6, :cond_8

    if-gt p1, v4, :cond_8

    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, "remove":Z
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 633
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeViewAt(I)V

    .line 634
    iput-boolean v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    .line 635
    const/4 v2, 0x1

    .line 637
    :cond_6
    invoke-virtual {v1, v5}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 638
    invoke-virtual {v1, v5}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removePage(I)V

    .line 640
    :cond_7
    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 641
    .local v0, "currentScreen":I
    if-eqz v2, :cond_4

    if-ne v0, v5, :cond_4

    .line 642
    invoke-virtual {v3, v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 643
    invoke-virtual {v1, v8}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setCurrentPage(I)V

    goto :goto_0

    .line 645
    .end local v0    # "currentScreen":I
    .end local v2    # "remove":Z
    :cond_8
    if-le p1, v4, :cond_4

    const/16 v4, 0x9

    if-gt p1, v4, :cond_4

    .line 646
    const/4 v2, 0x0

    .line 647
    .restart local v2    # "remove":Z
    invoke-virtual {v3, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 648
    invoke-virtual {v3, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->removeViewAt(I)V

    .line 649
    iput-boolean v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    .line 650
    const/4 v2, 0x1

    .line 652
    :cond_9
    invoke-virtual {v1, v6}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 653
    invoke-virtual {v1, v6}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->removePage(I)V

    .line 655
    :cond_a
    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 656
    .restart local v0    # "currentScreen":I
    if-eqz v2, :cond_4

    if-ne v0, v6, :cond_4

    .line 657
    invoke-virtual {v3, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 658
    invoke-virtual {v1, v5}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setCurrentPage(I)V

    goto :goto_0

    .line 666
    .end local v0    # "currentScreen":I
    .end local v2    # "remove":Z
    :cond_b
    invoke-virtual {v1, v7}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setVisibility(I)V

    goto :goto_1
.end method

.method private requestWorkspace(Z)V
    .locals 5
    .param p1, "anim"    # Z

    .prologue
    .line 1738
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 1741
    .local v1, "count":I
    const/4 v3, 0x0

    .line 1743
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1744
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1746
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    if-ne v0, v4, :cond_1

    .line 1747
    move v3, v2

    .line 1751
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4, p1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->treeViewCellLayout(IIZ)V

    .line 1753
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeEmptyCellLayout()V

    .line 1754
    return-void

    .line 1743
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private resetAllLongClickListener()V
    .locals 2

    .prologue
    .line 2365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2366
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2367
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2370
    :cond_1
    return-void
.end method

.method private resetAllPadding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2358
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2362
    :cond_1
    return-void
.end method

.method private rightTreeView(Landroid/view/View;)V
    .locals 6
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    .line 2998
    const/4 v2, -0x1

    .line 2999
    .local v2, "startIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3000
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 3001
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3002
    move v2, v0

    .line 3006
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3024
    :cond_1
    :goto_1
    return-void

    .line 2999
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3010
    :cond_3
    const/4 v1, 0x0

    .line 3014
    .local v1, "outOfIndex":Z
    :cond_4
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    if-eq v3, p1, :cond_5

    .line 3015
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 3016
    add-int/lit8 v2, v2, -0x1

    .line 3017
    if-gtz v2, :cond_4

    .line 3018
    const/4 v1, 0x1

    .line 3022
    :cond_5
    if-nez v1, :cond_1

    const-string v3, "add_world_clock_tag"

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3023
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAllClockVisable()V
    .locals 3

    .prologue
    .line 1374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1375
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1376
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    if-nez v1, :cond_0

    const-string v1, "add_world_clock_tag"

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_2
    return-void
.end method

.method private setDeleteAnimationLock()V
    .locals 4

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    .line 923
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$7;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$7;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    return-void
.end method

.method private setNewClockDataFromDB()V
    .locals 19

    .prologue
    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 2157
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getWorldClocksFromDB()V

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2162
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 2163
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2164
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2165
    .local v13, "id":I
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2166
    .local v8, "cityName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2167
    .local v7, "cityCode":Ljava/lang/String;
    invoke-static {v7}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->formatCityAndCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2168
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2169
    .local v17, "timeZone":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2170
    .local v10, "countryName":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2171
    .local v9, "countryCode":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2172
    .local v18, "timeZoneID":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2174
    .local v16, "sortIndex":I
    new-instance v14, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-direct {v14}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;-><init>()V

    .line 2175
    .local v14, "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    invoke-virtual {v14, v13}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setId(I)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f060000

    const-string v3, "city"

    invoke-static {v1, v2, v7, v3}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->getXmlResStr(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2177
    .local v12, "finalCityName":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2178
    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2180
    :cond_2
    const-string v1, "%"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2181
    const-string v1, "%"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2183
    :cond_3
    invoke-virtual {v14, v12}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCityName(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v14, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCityCode(Ljava/lang/String;)V

    .line 2185
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setTimeZone(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v14, v10}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCountryName(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v14, v9}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setCountryCode(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setTimeZoneID(Ljava/lang/String;)V

    .line 2189
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->setSortIndex(I)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    .end local v7    # "cityCode":Ljava/lang/String;
    .end local v8    # "cityName":Ljava/lang/String;
    .end local v9    # "countryCode":Ljava/lang/String;
    .end local v10    # "countryName":Ljava/lang/String;
    .end local v12    # "finalCityName":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v14    # "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v16    # "sortIndex":I
    .end local v17    # "timeZone":Ljava/lang/String;
    .end local v18    # "timeZoneID":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    .line 2194
    .local v15, "retry":I
    :cond_5
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_6

    .line 2195
    const/16 v1, 0xa

    if-lt v15, v1, :cond_7

    .line 2207
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2198
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2199
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2201
    .restart local v13    # "id":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    .line 2203
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method private setTextViewVisiableAndMarkTag(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2981
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-nez v2, :cond_1

    .line 2993
    :cond_0
    :goto_0
    return-void

    .line 2984
    :cond_1
    const v2, 0x7f0b00d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2985
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0b0133

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2987
    .local v0, "dateText":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VISIBLE"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2988
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VISIBLE"

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2990
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2991
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2987
    :cond_2
    const-string v2, "INVISIBLE"

    goto :goto_1

    .line 2988
    :cond_3
    const-string v2, "INVISIBLE"

    goto :goto_2
.end method

.method private setWorldClockViewVisibility()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 328
    .local v1, "size":I
    if-ne v1, v2, :cond_0

    move v0, v2

    .line 329
    .local v0, "isSingleClock":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 330
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v4, v5, v2}, Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;->setParentViewAndWorldClockItem(Landroid/view/View;Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;)V

    .line 333
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    invoke-virtual {v2}, Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;->restartRunnable()V

    .line 334
    invoke-direct {p0, v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->notifyChangeStatusBarTheme(Z)V

    .line 342
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$4;

    invoke-direct {v3, p0, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$4;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Z)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void

    .end local v0    # "isSingleClock":Z
    :cond_0
    move v0, v3

    .line 328
    goto :goto_0

    .line 336
    .restart local v0    # "isSingleClock":Z
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    invoke-virtual {v3}, Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;->releaseRunnable()V

    .line 339
    invoke-direct {p0, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->notifyChangeStatusBarTheme(Z)V

    goto :goto_1
.end method

.method private showAddOrDelWorldClockGuide()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 267
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getBottom()I

    move-result v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    .local v6, "rect":Landroid/graphics/Rect;
    const-string v1, "click_del_world_clock_guide_showed"

    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v0, v5

    const v3, 0x7f0e015a

    const v4, 0x7f0c005a

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->showBaseGuide(Ljava/lang/String;Landroid/view/View;IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private showAddSigleWorldClockGuide()Z
    .locals 7

    .prologue
    .line 275
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getBottom()I

    move-result v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v6, "rect":Landroid/graphics/Rect;
    const-string v1, "single_world_clock_guide_showed"

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockAddIcon:Landroid/widget/ImageView;

    const v3, 0x7f0e015b

    const v4, 0x7f0c0059

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->showBaseGuide(Ljava/lang/String;Landroid/view/View;IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private showBaseGuide(Ljava/lang/String;Landroid/view/View;IIILandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "keyPrefShowed"    # Ljava/lang/String;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "messageId"    # I
    .param p4, "voffsetId"    # I
    .param p5, "mode"    # I
    .param p6, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/flyme/alarmclock/utils/ReflectUtils;->canShowUserGuide(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v4}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 263
    :goto_0
    return v3

    .line 243
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/meizu/common/widget/GuidePopupWindow;

    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "guidePopupWindow":Lcom/meizu/common/widget/GuidePopupWindow;
    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 248
    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/GuidePopupWindow;->disableArrow(Z)V

    .line 249
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->setColorStyle(I)V

    .line 250
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->setMessage(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p5}, Lcom/meizu/common/widget/GuidePopupWindow;->setLayoutMode(I)V

    .line 252
    new-instance v5, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$3;

    invoke-direct {v5, p0, p1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$3;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 260
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 262
    .local v2, "voffset":I
    invoke-virtual {v0, p6, p2, v4, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/graphics/Rect;Landroid/view/View;II)V

    goto :goto_0
.end method

.method private treeViewCellLayout(IIZ)V
    .locals 34
    .param p1, "prev"    # I
    .param p2, "next"    # I
    .param p3, "anim"    # Z

    .prologue
    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1807
    .local v8, "cellPrevCellLayout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1809
    .local v7, "cellNextCellLayout":Landroid/view/ViewGroup;
    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1812
    .local v11, "childCount":I
    const/4 v12, 0x0

    .line 1813
    .local v12, "currentDescription":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1816
    .local v13, "currentLayout":Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v11, :cond_3

    .line 1817
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1818
    .local v9, "child":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v24

    .line 1821
    .local v24, "taskDescription":Ljava/lang/Object;
    if-nez v24, :cond_2

    .line 1816
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1824
    :cond_2
    move-object/from16 v12, v24

    .line 1825
    move-object v13, v9

    .line 1832
    .end local v9    # "child":Landroid/widget/LinearLayout;
    .end local v12    # "currentDescription":Ljava/lang/Object;
    .end local v24    # "taskDescription":Ljava/lang/Object;
    :cond_3
    if-eqz v12, :cond_6

    .line 1833
    const v30, 0x7f0b0130

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 1834
    .local v28, "view":Landroid/view/ViewGroup;
    const v30, 0x7f0b00d9

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1835
    .local v26, "textView":Landroid/widget/TextView;
    const v30, 0x7f0b0133

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1839
    .local v16, "dateView":Landroid/widget/TextView;
    add-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 1841
    .local v22, "lastLayout":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_6

    .line 1842
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1844
    const v30, 0x7f0b012f

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 1845
    .local v23, "layout2":Landroid/widget/LinearLayout;
    const v30, 0x7f0b0130

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 1846
    .local v29, "view2":Landroid/view/ViewGroup;
    const v30, 0x7f0b00d9

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1847
    .local v27, "textView2":Landroid/widget/TextView;
    const v30, 0x7f0b0133

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1850
    .local v17, "dateView2":Landroid/widget/TextView;
    const-string v30, "add_world_clock_tag"

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1851
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1852
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0159

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1855
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1856
    const v30, 0x7f0b0131

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1858
    .local v4, "addLayout":Landroid/widget/FrameLayout;
    if-eqz p3, :cond_4

    .line 1859
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1860
    .local v5, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v30, 0xc8

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1861
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1864
    .end local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    if-eqz p3, :cond_5

    .line 1865
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/high16 v30, 0x431d0000

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1866
    .local v6, "animationText":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v30, 0xc8

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1867
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1870
    .end local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    :cond_5
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1871
    const/16 v30, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1872
    const/16 v30, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1873
    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1876
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1877
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1878
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1879
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1921
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v16    # "dateView":Landroid/widget/TextView;
    .end local v17    # "dateView2":Landroid/widget/TextView;
    .end local v22    # "lastLayout":Landroid/widget/LinearLayout;
    .end local v23    # "layout2":Landroid/widget/LinearLayout;
    .end local v26    # "textView":Landroid/widget/TextView;
    .end local v27    # "textView2":Landroid/widget/TextView;
    .end local v28    # "view":Landroid/view/ViewGroup;
    .end local v29    # "view2":Landroid/view/ViewGroup;
    :cond_6
    :goto_2
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v11, :cond_d

    .line 1922
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1924
    .restart local v9    # "child":Landroid/widget/LinearLayout;
    const v30, 0x7f0b0130

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 1925
    .restart local v28    # "view":Landroid/view/ViewGroup;
    const v30, 0x7f0b00d9

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1926
    .restart local v26    # "textView":Landroid/widget/TextView;
    const v30, 0x7f0b0133

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1930
    .local v14, "dateText":Landroid/widget/TextView;
    add-int/lit8 v30, v20, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1932
    .local v10, "child2":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_c

    .line 1933
    const v30, 0x7f0b0130

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 1934
    .restart local v29    # "view2":Landroid/view/ViewGroup;
    const v30, 0x7f0b00d9

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1935
    .restart local v27    # "textView2":Landroid/widget/TextView;
    const v30, 0x7f0b0133

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1937
    .local v15, "dateText2":Landroid/widget/TextView;
    const-string v30, "add_world_clock_tag"

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 1938
    const-string v30, "add_world_clock_tag"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1939
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1940
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0159

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1944
    const v30, 0x7f0b0131

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1945
    .restart local v4    # "addLayout":Landroid/widget/FrameLayout;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1946
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1948
    const/16 v30, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1949
    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1951
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1970
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    :goto_4
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1971
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1972
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1973
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1921
    .end local v15    # "dateText2":Landroid/widget/TextView;
    .end local v27    # "textView2":Landroid/widget/TextView;
    .end local v29    # "view2":Landroid/view/ViewGroup;
    :cond_7
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1882
    .end local v9    # "child":Landroid/widget/LinearLayout;
    .end local v10    # "child2":Landroid/widget/LinearLayout;
    .end local v14    # "dateText":Landroid/widget/TextView;
    .restart local v16    # "dateView":Landroid/widget/TextView;
    .restart local v17    # "dateView2":Landroid/widget/TextView;
    .restart local v22    # "lastLayout":Landroid/widget/LinearLayout;
    .restart local v23    # "layout2":Landroid/widget/LinearLayout;
    .restart local v27    # "textView2":Landroid/widget/TextView;
    .restart local v29    # "view2":Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    if-lez v30, :cond_6

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_6

    .line 1883
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 1885
    .local v18, "handleView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1887
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1888
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1890
    if-eqz p3, :cond_9

    .line 1891
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1892
    .restart local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v30, 0xc8

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1893
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1896
    .end local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_9
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 1901
    if-eqz p3, :cond_a

    .line 1902
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/high16 v30, 0x431d0000

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1903
    .restart local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v30, 0xc8

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1904
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1905
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1910
    .end local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    :cond_a
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1911
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1912
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 1953
    .end local v16    # "dateView":Landroid/widget/TextView;
    .end local v17    # "dateView2":Landroid/widget/TextView;
    .end local v18    # "handleView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    .end local v22    # "lastLayout":Landroid/widget/LinearLayout;
    .end local v23    # "layout2":Landroid/widget/LinearLayout;
    .restart local v9    # "child":Landroid/widget/LinearLayout;
    .restart local v10    # "child2":Landroid/widget/LinearLayout;
    .restart local v14    # "dateText":Landroid/widget/TextView;
    .restart local v15    # "dateText2":Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v25

    .line 1954
    .local v25, "taskDescription2":Ljava/lang/Object;
    if-eqz v25, :cond_7

    .line 1956
    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 1957
    .local v19, "handleView2":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1959
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1961
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1962
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1963
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1964
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1966
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 1968
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1974
    .end local v15    # "dateText2":Landroid/widget/TextView;
    .end local v19    # "handleView2":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    .end local v25    # "taskDescription2":Ljava/lang/Object;
    .end local v27    # "textView2":Landroid/widget/TextView;
    .end local v29    # "view2":Landroid/view/ViewGroup;
    :cond_c
    const/16 v30, 0x2

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/16 v30, 0x3

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 1975
    add-int/lit8 v30, v20, -0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 1977
    .local v21, "lLeft":Landroid/widget/LinearLayout;
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1978
    const-string v30, "add_world_clock_tag"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1979
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0159

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1982
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1983
    const v30, 0x7f0b0131

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1984
    .restart local v4    # "addLayout":Landroid/widget/FrameLayout;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1985
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1987
    const/16 v30, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1988
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1993
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v9    # "child":Landroid/widget/LinearLayout;
    .end local v10    # "child2":Landroid/widget/LinearLayout;
    .end local v14    # "dateText":Landroid/widget/TextView;
    .end local v21    # "lLeft":Landroid/widget/LinearLayout;
    .end local v26    # "textView":Landroid/widget/TextView;
    .end local v28    # "view":Landroid/view/ViewGroup;
    :cond_d
    add-int/lit8 v30, p2, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->treeViewCellLayout(IIZ)V

    goto/16 :goto_0
.end method

.method private updateData(ZZ)V
    .locals 27
    .param p1, "anim"    # Z
    .param p2, "requestWorkspace"    # Z

    .prologue
    .line 1558
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_b

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1561
    .local v7, "child":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isLastWorkspace()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    if-eqz v7, :cond_1

    .line 1562
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 1563
    .local v20, "view":Landroid/view/ViewGroup;
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1564
    .local v17, "textView":Landroid/widget/TextView;
    const v22, 0x7f0b0133

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1567
    .local v11, "dateText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0159

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    const v22, 0x7f0b0131

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1571
    .local v4, "addLayout":Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1572
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1574
    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1575
    const-string v22, "add_world_clock_tag"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1576
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    if-eqz p1, :cond_0

    .line 1579
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1580
    .local v5, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1581
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1584
    .end local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    if-eqz p1, :cond_1

    .line 1585
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/high16 v22, 0x431d0000

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1586
    .local v6, "animationText":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1587
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1591
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "dateText":Landroid/widget/TextView;
    .end local v17    # "textView":Landroid/widget/TextView;
    .end local v20    # "view":Landroid/view/ViewGroup;
    :cond_1
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v7, v0, :cond_3

    .line 1558
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1593
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 1595
    .local v16, "taskDescription":Ljava/lang/Object;
    if-eqz v16, :cond_2

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1599
    .local v8, "childView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    const-string v22, "add_world_clock_tag"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1600
    const-string v22, "add_world_clock_tag"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1602
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1603
    .local v19, "tv":Landroid/widget/TextView;
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1604
    .local v10, "clockImage":Landroid/view/ViewGroup;
    const v22, 0x7f0b0131

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1605
    .restart local v4    # "addLayout":Landroid/widget/FrameLayout;
    const v22, 0x7f0b0133

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1608
    .restart local v11    # "dateText":Landroid/widget/TextView;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1610
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1611
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1612
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1617
    .local v9, "childViewNext":Landroid/view/View;
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1618
    .restart local v19    # "tv":Landroid/widget/TextView;
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "clockImage":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 1619
    .restart local v10    # "clockImage":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1620
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1623
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v9    # "childViewNext":Landroid/view/View;
    .end local v10    # "clockImage":Landroid/view/ViewGroup;
    .end local v11    # "dateText":Landroid/widget/TextView;
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_4
    if-eqz v8, :cond_2

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_5

    .line 1625
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1627
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 1628
    .restart local v20    # "view":Landroid/view/ViewGroup;
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1629
    .restart local v17    # "textView":Landroid/widget/TextView;
    const v22, 0x7f0b0133

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1632
    .restart local v11    # "dateText":Landroid/widget/TextView;
    const-string v22, "add_world_clock_tag"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1633
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 1634
    .local v21, "viewGroup2":Landroid/view/ViewGroup;
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1635
    .local v18, "textView2":Landroid/widget/TextView;
    const v22, 0x7f0b0133

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1638
    .local v12, "dateText2":Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1639
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1640
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0159

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    const v22, 0x7f0b0131

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1645
    .restart local v4    # "addLayout":Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1646
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1648
    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1649
    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFinalindex:I

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 1652
    :cond_6
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c02ca

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1655
    .local v15, "paddingPX":I
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v8, v0, v1, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1662
    .end local v15    # "paddingPX":I
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1663
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1658
    :cond_7
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mGroup:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 1668
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v12    # "dateText2":Landroid/widget/TextView;
    .end local v18    # "textView2":Landroid/widget/TextView;
    .end local v21    # "viewGroup2":Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    if-lez v22, :cond_2

    .line 1669
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    .line 1670
    .local v13, "handleView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    if-eqz v13, :cond_2

    .line 1671
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1673
    const v22, 0x7f0b0130

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 1674
    .restart local v21    # "viewGroup2":Landroid/view/ViewGroup;
    const v22, 0x7f0b00d9

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1675
    .restart local v18    # "textView2":Landroid/widget/TextView;
    const v22, 0x7f0b0133

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1678
    .restart local v12    # "dateText2":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1679
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1680
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    invoke-virtual {v13, v12}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 1685
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isLastWorkspace()Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_a

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0159

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    const v22, 0x7f0b0131

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1692
    .restart local v4    # "addLayout":Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1693
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1695
    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1696
    const-string v22, "add_world_clock_tag"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1697
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1699
    if-eqz p1, :cond_9

    .line 1700
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1701
    .restart local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1702
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1705
    .end local v5    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_9
    if-eqz p1, :cond_2

    .line 1706
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/high16 v22, 0x431d0000

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1707
    .restart local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1708
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1711
    .end local v4    # "addLayout":Landroid/widget/FrameLayout;
    .end local v6    # "animationText":Landroid/view/animation/TranslateAnimation;
    :cond_a
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1712
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1724
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childView":Landroid/view/View;
    .end local v11    # "dateText":Landroid/widget/TextView;
    .end local v12    # "dateText2":Landroid/widget/TextView;
    .end local v13    # "handleView":Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;
    .end local v16    # "taskDescription":Ljava/lang/Object;
    .end local v17    # "textView":Landroid/widget/TextView;
    .end local v18    # "textView2":Landroid/widget/TextView;
    .end local v20    # "view":Landroid/view/ViewGroup;
    .end local v21    # "viewGroup2":Landroid/view/ViewGroup;
    :cond_b
    if-eqz p2, :cond_c

    .line 1725
    invoke-direct/range {p0 .. p1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->requestWorkspace(Z)V

    .line 1727
    :cond_c
    return-void
.end method


# virtual methods
.method public ScrollPage(I)V
    .locals 6
    .param p1, "nextPrev"    # I

    .prologue
    const/4 v5, 0x1

    .line 2399
    iput-boolean v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    .line 2400
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v0

    .line 2401
    .local v0, "currentIndex":I
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v3

    .line 2402
    .local v3, "viewGroupCount":I
    const/4 v1, 0x0

    .line 2403
    .local v1, "desIndex":I
    if-nez p1, :cond_0

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 2404
    add-int/lit8 v1, v0, 0x1

    .line 2414
    :goto_0
    new-instance v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$10;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$10;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    .line 2422
    .local v2, "runnalble":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 2423
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4, v1, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setCurrentPageWhileScrollFinished(ILjava/lang/Runnable;)V

    .line 2424
    .end local v2    # "runnalble":Ljava/lang/Runnable;
    :goto_1
    return-void

    .line 2406
    :cond_0
    if-ne p1, v5, :cond_1

    if-lez v0, :cond_1

    .line 2407
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 2410
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    goto :goto_1
.end method

.method public checkAndRefreshDB()V
    .locals 5

    .prologue
    .line 3096
    const/4 v2, 0x0

    .line 3097
    .local v2, "needRefresh":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3100
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 3101
    .local v1, "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    invoke-virtual {v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCitiesIds:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3102
    const/4 v2, 0x1

    .line 3106
    .end local v1    # "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    :cond_0
    if-eqz v2, :cond_1

    .line 3107
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$13;

    invoke-direct {v4, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$13;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3148
    :cond_1
    return-void

    .line 3097
    .restart local v1    # "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public checkTest()V
    .locals 8

    .prologue
    .line 890
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v1

    .line 893
    .local v1, "count":I
    const/4 v3, 0x0

    .line 895
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 896
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v5, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 898
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-ne v0, v5, :cond_1

    .line 899
    const-string v6, "rexsu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "child count = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move v3, v2

    .line 904
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 905
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    if-nez v5, :cond_2

    .line 906
    const-string v5, "rexsu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 895
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const-string v5, "add_world_clock_tag"

    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 909
    const-string v5, "rexsu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getTag = ADD_LAYOUT_TAG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 910
    :cond_3
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 911
    const-string v5, "rexsu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getTag = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 913
    :cond_4
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 914
    .local v4, "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    const-string v5, "rexsu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getTag = WorldClockItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " visable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 919
    .end local v4    # "item":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    :cond_5
    return-void
.end method

.method public clearAnimationSet()V
    .locals 3

    .prologue
    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 884
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 881
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 401
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public doDelete()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 1385
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-nez v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return v11

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v6

    .line 1388
    .local v6, "cityCode":Ljava/lang/String;
    const-string v1, "Beijing"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    const/4 v9, 0x1

    .line 1390
    .local v9, "result":Z
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock;->QUERY_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "city_code=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1392
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1393
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClock$Columns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city_code=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1396
    .local v8, "res":I
    if-lez v8, :cond_6

    const/4 v9, 0x1

    .line 1398
    .end local v8    # "res":I
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1401
    .local v10, "toast":Landroid/widget/Toast;
    invoke-static {v10}, Lcom/meizu/flyme/alarmclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 1402
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1405
    .end local v10    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1408
    :cond_4
    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1409
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    move v11, v9

    .line 1411
    goto/16 :goto_0

    .restart local v8    # "res":I
    :cond_6
    move v9, v11

    .line 1396
    goto :goto_1
.end method

.method public doDeleteAnimation()V
    .locals 38

    .prologue
    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 1168
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 1169
    monitor-exit v34

    .line 1349
    :goto_0
    return-void

    .line 1171
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 1173
    .local v14, "group":Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 1175
    .local v9, "count":I
    const/4 v12, 0x0

    .line 1177
    .local v12, "finalindex":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_3

    move/from16 v0, v16

    if-lt v0, v12, :cond_3

    .line 1178
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1179
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_2

    .line 1177
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1182
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    if-ne v8, v0, :cond_1

    .line 1183
    move/from16 v12, v16

    .line 1188
    .end local v8    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v10

    .line 1189
    .local v10, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02d5

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 1190
    .local v30, "topPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02d3

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1192
    .local v15, "horizontalPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    mul-int/lit8 v35, v10, 0x3

    aget-object v22, v33, v35

    .line 1193
    .local v22, "leftView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    mul-int/lit8 v35, v10, 0x3

    add-int/lit8 v35, v35, 0x1

    aget-object v24, v33, v35

    .line 1194
    .local v24, "middleView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    mul-int/lit8 v35, v10, 0x3

    add-int/lit8 v35, v35, 0x2

    aget-object v29, v33, v35

    .line 1196
    .local v29, "rightView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02e7

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1198
    .local v6, "animationPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    if-ne v14, v0, :cond_4

    if-nez v12, :cond_4

    const-string v33, "add_world_clock_tag"

    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1200
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 1201
    .local v32, "translateView":Landroid/view/View;
    new-instance v31, Landroid/view/animation/TranslateAnimation;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1202
    .local v31, "translateAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v35, 0xc8

    move-object/from16 v0, v31

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1203
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1206
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1207
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1208
    monitor-exit v34

    goto/16 :goto_0

    .line 1348
    .end local v6    # "animationPadding":I
    .end local v9    # "count":I
    .end local v10    # "currentPage":I
    .end local v12    # "finalindex":I
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v15    # "horizontalPadding":I
    .end local v16    # "i":I
    .end local v22    # "leftView":Landroid/widget/LinearLayout;
    .end local v24    # "middleView":Landroid/widget/LinearLayout;
    .end local v29    # "rightView":Landroid/widget/LinearLayout;
    .end local v30    # "topPadding":I
    .end local v31    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    .end local v32    # "translateView":Landroid/view/View;
    :catchall_0
    move-exception v33

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v33

    .line 1211
    .restart local v6    # "animationPadding":I
    .restart local v9    # "count":I
    .restart local v10    # "currentPage":I
    .restart local v12    # "finalindex":I
    .restart local v14    # "group":Landroid/view/ViewGroup;
    .restart local v15    # "horizontalPadding":I
    .restart local v16    # "i":I
    .restart local v22    # "leftView":Landroid/widget/LinearLayout;
    .restart local v24    # "middleView":Landroid/widget/LinearLayout;
    .restart local v29    # "rightView":Landroid/widget/LinearLayout;
    .restart local v30    # "topPadding":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    if-ne v14, v0, :cond_8

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v12, v0, :cond_5

    if-nez v12, :cond_8

    :cond_5
    const-string v33, "add_world_clock_tag"

    const/16 v35, 0x2

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1213
    const/16 v19, 0x0

    .line 1214
    .local v19, "leftChild":Landroid/view/View;
    const/16 v33, 0x2

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 1215
    .local v27, "rightChild":Landroid/view/View;
    const/16 v18, 0x0

    .line 1216
    .local v18, "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v26, 0x0

    .line 1218
    .local v26, "rightAnimation":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02c8

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 1219
    .local v21, "leftPaddingMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02c7

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1220
    .local v20, "leftPaddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0c02c9

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    .line 1222
    .local v28, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1223
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1224
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v33, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v35

    div-int/lit8 v35, v35, 0x3

    sub-int v35, v35, v21

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1230
    .restart local v18    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_6
    :goto_2
    new-instance v26, Landroid/view/animation/TranslateAnimation;

    .end local v26    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v33, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x3

    add-int v35, v35, v28

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1232
    .restart local v26    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v35, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1233
    const-wide/16 v35, 0xc8

    move-object/from16 v0, v26

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1234
    const/16 v33, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1235
    const/16 v33, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1238
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1239
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1240
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1241
    monitor-exit v34

    goto/16 :goto_0

    .line 1225
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1226
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1227
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v33, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x2

    div-int/lit8 v35, v35, 0x3

    sub-int v35, v35, v20

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_2

    .line 1244
    .end local v18    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v19    # "leftChild":Landroid/view/View;
    .end local v20    # "leftPaddingLeft":I
    .end local v21    # "leftPaddingMiddle":I
    .end local v26    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v27    # "rightChild":Landroid/view/View;
    .end local v28    # "rightPadding":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isDifferentPageData()I

    move-result v13

    .line 1249
    .local v13, "fromPage":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->lockClockRefresh()V

    .line 1253
    const/4 v11, -0x1

    .line 1254
    .local v11, "direction":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_b

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1257
    mul-int/lit8 v33, v10, 0x3

    add-int/lit8 v17, v33, 0x1

    .line 1258
    .local v17, "index":I
    const/16 v23, 0x3

    .line 1275
    .local v23, "maxCount":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v17

    move/from16 v1, v33

    if-lt v0, v1, :cond_d

    .line 1276
    monitor-exit v34

    goto/16 :goto_0

    .line 1260
    .end local v17    # "index":I
    .end local v23    # "maxCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1262
    mul-int/lit8 v33, v10, 0x3

    add-int/lit8 v17, v33, 0x2

    .line 1263
    .restart local v17    # "index":I
    const/16 v23, 0x2

    .restart local v23    # "maxCount":I
    goto :goto_3

    .line 1266
    .end local v17    # "index":I
    .end local v23    # "maxCount":I
    :cond_a
    mul-int/lit8 v33, v10, 0x3

    add-int/lit8 v17, v33, 0x3

    .line 1267
    .restart local v17    # "index":I
    const/16 v23, 0x1

    .restart local v23    # "maxCount":I
    goto :goto_3

    .line 1269
    .end local v17    # "index":I
    .end local v23    # "maxCount":I
    :cond_b
    if-nez v13, :cond_c

    .line 1270
    mul-int/lit8 v17, v10, 0x3

    .line 1271
    .restart local v17    # "index":I
    const/16 v23, 0x4

    .restart local v23    # "maxCount":I
    goto :goto_3

    .line 1273
    .end local v17    # "index":I
    .end local v23    # "maxCount":I
    :cond_c
    monitor-exit v34

    goto/16 :goto_0

    .line 1278
    .restart local v17    # "index":I
    .restart local v23    # "maxCount":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    if-eqz v33, :cond_10

    if-lez v23, :cond_10

    .line 1279
    const/4 v5, 0x0

    .line 1280
    .local v5, "anim":Landroid/view/animation/TranslateAnimation;
    const/16 v33, 0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    add-int/lit8 v35, v17, -0x1

    aget-object v33, v33, v35

    if-eqz v33, :cond_e

    const-string v33, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    add-int/lit8 v36, v17, -0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 1287
    monitor-exit v34

    goto/16 :goto_0

    .line 1290
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    const/16 v35, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1294
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1296
    .local v25, "newBM":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v33

    if-nez v33, :cond_11

    if-eqz v25, :cond_11

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeFakeImage()V

    .line 1298
    new-instance v33, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v35, "fake_img"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    new-instance v35, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    aget-object v36, v36, v17

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    aget-object v37, v37, v17

    invoke-virtual/range {v37 .. v37}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v37

    invoke-direct/range {v35 .. v37}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    sget-object v35, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addView(Landroid/view/View;I)V

    .line 1315
    :goto_4
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    add-int/lit8 v35, v17, -0x1

    aget-object v33, v33, v35

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v33

    mul-int/lit8 v33, v33, 0x3

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    add-int/lit8 v36, v17, -0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getX()F

    move-result v35

    int-to-float v0, v15

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1325
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v25    # "newBM":Landroid/graphics/Bitmap;
    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_5
    const-wide/16 v35, 0x96

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1326
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1328
    const/16 v33, 0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    if-eqz v33, :cond_f

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1337
    :cond_f
    :goto_6
    const-string v33, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    aget-object v35, v35, v17

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 1338
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1348
    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_10
    :goto_7
    monitor-exit v34

    goto/16 :goto_0

    .line 1305
    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    .restart local v7    # "bm":Landroid/graphics/Bitmap;
    .restart local v25    # "newBM":Landroid/graphics/Bitmap;
    :cond_11
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    goto/16 :goto_4

    .line 1318
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v25    # "newBM":Landroid/graphics/Bitmap;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    add-int/lit8 v35, v17, -0x1

    aget-object v33, v33, v35

    if-eqz v33, :cond_13

    const-string v33, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    add-int/lit8 v36, v17, -0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 1320
    monitor-exit v34

    goto/16 :goto_0

    .line 1323
    :cond_13
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    add-int/lit8 v36, v17, -0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v35

    mul-int v35, v35, v11

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_5

    .line 1334
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    aget-object v33, v33, v17

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 1341
    :cond_15
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 1342
    add-int/lit8 v17, v17, 0x1

    .line 1343
    add-int/lit8 v23, v23, -0x1

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v17

    move/from16 v1, v33

    if-lt v0, v1, :cond_d

    goto/16 :goto_7
.end method

.method public doUnDeleteAnimation()V
    .locals 39

    .prologue
    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 934
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 935
    :cond_0
    monitor-exit v35

    .line 1164
    :goto_0
    return-void

    .line 938
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 940
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 942
    .local v10, "count":I
    const/4 v13, 0x0

    .line 944
    .local v13, "finalindex":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v10, :cond_4

    move/from16 v0, v17

    if-lt v0, v13, :cond_4

    .line 945
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 946
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_3

    .line 944
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 949
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    if-ne v9, v0, :cond_2

    .line 950
    move/from16 v13, v17

    .line 955
    .end local v9    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v11

    .line 956
    .local v11, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02d5

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 957
    .local v31, "topPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02d3

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 959
    .local v16, "horizontalPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    mul-int/lit8 v36, v11, 0x3

    aget-object v23, v34, v36

    .line 960
    .local v23, "leftView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    mul-int/lit8 v36, v11, 0x3

    add-int/lit8 v36, v36, 0x1

    aget-object v25, v34, v36

    .line 961
    .local v25, "middleView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    mul-int/lit8 v36, v11, 0x3

    add-int/lit8 v36, v36, 0x2

    aget-object v30, v34, v36

    .line 963
    .local v30, "rightView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02e7

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 965
    .local v6, "animationPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    if-ne v15, v0, :cond_5

    if-nez v13, :cond_5

    const-string v34, "add_world_clock_tag"

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 967
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 968
    .local v33, "translateView":Landroid/view/View;
    new-instance v32, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 969
    .local v32, "translateAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v36, 0xc8

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 970
    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 973
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    move-object/from16 v36, v0

    const-wide/16 v37, 0xc8

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 975
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mNeedUnDeleteAnim:Z

    .line 976
    monitor-exit v35

    goto/16 :goto_0

    .line 1163
    .end local v6    # "animationPadding":I
    .end local v10    # "count":I
    .end local v11    # "currentPage":I
    .end local v13    # "finalindex":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "horizontalPadding":I
    .end local v17    # "i":I
    .end local v23    # "leftView":Landroid/widget/LinearLayout;
    .end local v25    # "middleView":Landroid/widget/LinearLayout;
    .end local v30    # "rightView":Landroid/widget/LinearLayout;
    .end local v31    # "topPadding":I
    .end local v32    # "translateAnim":Landroid/view/animation/TranslateAnimation;
    .end local v33    # "translateView":Landroid/view/View;
    :catchall_0
    move-exception v34

    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v34

    .line 979
    .restart local v6    # "animationPadding":I
    .restart local v10    # "count":I
    .restart local v11    # "currentPage":I
    .restart local v13    # "finalindex":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "horizontalPadding":I
    .restart local v17    # "i":I
    .restart local v23    # "leftView":Landroid/widget/LinearLayout;
    .restart local v25    # "middleView":Landroid/widget/LinearLayout;
    .restart local v30    # "rightView":Landroid/widget/LinearLayout;
    .restart local v31    # "topPadding":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    if-ne v15, v0, :cond_9

    const/16 v34, 0x1

    move/from16 v0, v34

    if-eq v13, v0, :cond_6

    if-nez v13, :cond_9

    :cond_6
    const-string v34, "add_world_clock_tag"

    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 981
    const/16 v20, 0x0

    .line 982
    .local v20, "leftChild":Landroid/view/View;
    const/16 v34, 0x2

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 983
    .local v28, "rightChild":Landroid/view/View;
    const/16 v19, 0x0

    .line 984
    .local v19, "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v27, 0x0

    .line 986
    .local v27, "rightAnimation":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02c8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 987
    .local v22, "leftPaddingMiddle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02c7

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 988
    .local v21, "leftPaddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v36, 0x7f0c02c9

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    .line 990
    .local v29, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 991
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 992
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v34

    div-int/lit8 v34, v34, 0x3

    sub-int v34, v34, v22

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 998
    .restart local v19    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_7
    :goto_2
    new-instance v27, Landroid/view/animation/TranslateAnimation;

    .end local v27    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getWidth()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x3

    add-int v34, v34, v29

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1000
    .restart local v27    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v36, 0xc8

    move-object/from16 v0, v19

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1001
    const-wide/16 v36, 0xc8

    move-object/from16 v0, v27

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1002
    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1003
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1006
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1007
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    move-object/from16 v36, v0

    const-wide/16 v37, 0xc8

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    monitor-exit v35

    goto/16 :goto_0

    .line 993
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 994
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 995
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    .end local v19    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    mul-int/lit8 v34, v34, 0x2

    div-int/lit8 v34, v34, 0x3

    sub-int v34, v34, v21

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v19    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_2

    .line 1012
    .end local v19    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v20    # "leftChild":Landroid/view/View;
    .end local v21    # "leftPaddingLeft":I
    .end local v22    # "leftPaddingMiddle":I
    .end local v27    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v28    # "rightChild":Landroid/view/View;
    .end local v29    # "rightPadding":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isDifferentPageData()I

    move-result v14

    .line 1014
    .local v14, "fromPage":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->lockClockRefresh()V

    .line 1018
    const/4 v12, -0x1

    .line 1019
    .local v12, "direction":I
    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v14, v0, :cond_c

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1022
    mul-int/lit8 v34, v11, 0x3

    add-int/lit8 v18, v34, 0x1

    .line 1023
    .local v18, "index":I
    const/16 v24, 0x3

    .line 1040
    .local v24, "maxCount":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    move/from16 v1, v34

    if-lt v0, v1, :cond_e

    .line 1041
    monitor-exit v35

    goto/16 :goto_0

    .line 1025
    .end local v18    # "index":I
    .end local v24    # "maxCount":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1027
    mul-int/lit8 v34, v11, 0x3

    add-int/lit8 v18, v34, 0x2

    .line 1028
    .restart local v18    # "index":I
    const/16 v24, 0x2

    .restart local v24    # "maxCount":I
    goto :goto_3

    .line 1031
    .end local v18    # "index":I
    .end local v24    # "maxCount":I
    :cond_b
    mul-int/lit8 v34, v11, 0x3

    add-int/lit8 v18, v34, 0x3

    .line 1032
    .restart local v18    # "index":I
    const/16 v24, 0x1

    .restart local v24    # "maxCount":I
    goto :goto_3

    .line 1034
    .end local v18    # "index":I
    .end local v24    # "maxCount":I
    :cond_c
    if-nez v14, :cond_d

    .line 1035
    mul-int/lit8 v18, v11, 0x3

    .line 1036
    .restart local v18    # "index":I
    const/16 v24, 0x4

    .restart local v24    # "maxCount":I
    goto :goto_3

    .line 1038
    .end local v18    # "index":I
    .end local v24    # "maxCount":I
    :cond_d
    monitor-exit v35

    goto/16 :goto_0

    .line 1043
    .restart local v18    # "index":I
    .restart local v24    # "maxCount":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    if-eqz v34, :cond_13

    if-lez v24, :cond_13

    .line 1044
    const/4 v5, 0x0

    .line 1045
    .local v5, "anim":Landroid/view/animation/TranslateAnimation;
    const/4 v8, 0x0

    .line 1046
    .local v8, "bmRecycled":Z
    const/16 v34, 0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    add-int/lit8 v36, v18, -0x1

    aget-object v34, v34, v36

    if-eqz v34, :cond_f

    const-string v34, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    add-int/lit8 v37, v18, -0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeFakeImage()V

    .line 1054
    monitor-exit v35

    goto/16 :goto_0

    .line 1056
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1060
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1062
    .local v26, "newBm":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v34

    if-eqz v34, :cond_14

    :cond_10
    const/4 v8, 0x1

    .line 1063
    :goto_4
    if-nez v8, :cond_11

    if-eqz v26, :cond_11

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeFakeImage()V

    .line 1065
    new-instance v34, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const-string v36, "fake_img"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    new-instance v36, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    aget-object v37, v37, v18

    invoke-virtual/range {v37 .. v37}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v38, v0

    aget-object v38, v38, v18

    invoke-virtual/range {v38 .. v38}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v38

    invoke-direct/range {v36 .. v38}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    sget-object v36, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addView(Landroid/view/View;I)V

    .line 1107
    :cond_11
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    add-int/lit8 v36, v18, -0x1

    aget-object v34, v34, v36

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getX()F

    move-result v34

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v34, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    add-int/lit8 v37, v18, -0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v36

    mul-int/lit8 v36, v36, 0x3

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1118
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v26    # "newBm":Landroid/graphics/Bitmap;
    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_5
    const-wide/16 v36, 0x96

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1119
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1120
    new-instance v34, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$8;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$8;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1143
    const/16 v34, 0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 1144
    if-nez v8, :cond_12

    .line 1145
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mFakeAnimationImage:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    move-object/from16 v36, v0

    const-wide/16 v37, 0xc8

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1154
    :cond_12
    :goto_6
    const-string v34, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    aget-object v36, v36, v18

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 1163
    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v8    # "bmRecycled":Z
    :cond_13
    :goto_7
    monitor-exit v35

    goto/16 :goto_0

    .line 1062
    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    .restart local v7    # "bm":Landroid/graphics/Bitmap;
    .restart local v8    # "bmRecycled":Z
    .restart local v26    # "newBm":Landroid/graphics/Bitmap;
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1110
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v26    # "newBm":Landroid/graphics/Bitmap;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    add-int/lit8 v36, v18, -0x1

    aget-object v34, v34, v36

    if-eqz v34, :cond_16

    const-string v34, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    add-int/lit8 v37, v18, -0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeFakeImage()V

    .line 1113
    monitor-exit v35

    goto/16 :goto_0

    .line 1116
    :cond_16
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    add-int/lit8 v36, v18, -0x1

    aget-object v34, v34, v36

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v34

    mul-int v34, v34, v12

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v5    # "anim":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_5

    .line 1150
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    aget-object v34, v34, v18

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mReleaseRunnable:Ljava/lang/Runnable;

    move-object/from16 v36, v0

    const-wide/16 v37, 0xc8

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 1157
    :cond_18
    add-int/lit8 v18, v18, 0x1

    .line 1158
    add-int/lit8 v24, v24, -0x1

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v18

    move/from16 v1, v34

    if-lt v0, v1, :cond_e

    goto/16 :goto_7
.end method

.method public dragDeleteWorldClock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 833
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setAllClockVisable()V

    .line 834
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->releaseFakeAnimationImage()V

    .line 835
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setWorldClockViewVisibility()V

    .line 836
    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-nez v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isDifferentPage()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 840
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->animiationPerformance()V

    goto :goto_0

    .line 841
    :cond_2
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isDifferentPage()I

    move-result v2

    if-nez v2, :cond_3

    .line 842
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getLeftFakeImage()Landroid/view/View;

    move-result-object v1

    .line 843
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 844
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 845
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 846
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->deletePreparation()V

    .line 847
    invoke-direct {p0, v4, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    .line 848
    invoke-direct {p0, v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->differentPageDeleteAnimation(Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_0

    .line 849
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isDifferentPage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->deletePreparation()V

    .line 851
    invoke-direct {p0, v4, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->updateData(ZZ)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 772
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 773
    return-void
.end method

.method public getAddIconPosition()I
    .locals 3

    .prologue
    .line 3167
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 3168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3169
    const-string v1, "add_world_clock_tag"

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3174
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 3168
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3174
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getDragLayer()Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragLayer:Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;

    return-object v0
.end method

.method public getHalfDragViewWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 829
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLinearLayouts()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRectLeft()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRectRight()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getRight()I

    move-result v0

    return v0
.end method

.method public getRectTopNew()I
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public handleOnClick(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dimss"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public initView()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 183
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 184
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03006f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f0b00ee

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockLayout:Landroid/widget/RelativeLayout;

    .line 186
    const v5, 0x7f0b00f2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockAddIcon:Landroid/widget/ImageView;

    .line 187
    const v5, 0x7f0b00ef

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClock:Lcom/meizu/flyme/alarmclock/view/MzSingleWorldClock;

    .line 188
    new-instance v5, Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/meizu/flyme/alarmclock/worldclock/DragController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    .line 189
    const v5, 0x7f0b0134

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;

    .line 190
    .local v0, "dragLayer":Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    invoke-virtual {v0, v5}, Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;->setDragController(Lcom/meizu/flyme/alarmclock/worldclock/DragController;)V

    .line 191
    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragLayer:Lcom/meizu/flyme/alarmclock/worldclock/MzDragLayer;

    .line 192
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    invoke-virtual {v5, p0}, Lcom/meizu/flyme/alarmclock/worldclock/DragController;->setRa(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    .line 193
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const v5, 0x7f0b0138

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    aput-object v5, v6, v8

    .line 194
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    const v5, 0x7f0b012b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    aput-object v5, v6, v7

    .line 195
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    const v5, 0x7f0b012c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    aput-object v5, v6, v7

    .line 198
    const v5, 0x7f0b0135

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mRecentLayout:Landroid/widget/LinearLayout;

    .line 200
    const v5, 0x7f0b0136

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    .line 201
    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    .line 202
    .local v4, "workspace":Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;
    invoke-virtual {v4, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setDialog(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    .line 203
    invoke-virtual {v4, v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setHapticFeedbackEnabled(Z)V

    .line 205
    const v5, 0x7f0b0139

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    iput-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    .line 207
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v4, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setPageIndicator(Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;)V

    .line 209
    invoke-virtual {v4, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setDialog(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 212
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    const v7, 0x7f0b0130

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    aput-object v5, v6, v1

    .line 215
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    const v7, 0x7f0b00d9

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v1

    .line 216
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    const v7, 0x7f0b0131

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    aput-object v5, v6, v1

    .line 217
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    const v7, 0x7f0b0133

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_2

    .line 225
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getWorldClocksFromDB()V

    .line 231
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->onStart()V

    .line 233
    invoke-virtual {p0, v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addView(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public ismIsDraging()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    return v0
.end method

.method public moveAnimation(II)V
    .locals 29
    .param p1, "pageIndex"    # I
    .param p2, "lastIndex"    # I

    .prologue
    .line 2574
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDeleteAnimationLock:Z

    if-eqz v4, :cond_1

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2579
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v12

    .line 2580
    .local v12, "currentPage":I
    const/16 v26, -0x1

    .line 2581
    .local v26, "totalAvaliableCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 2582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v16

    if-eqz v4, :cond_2

    const-string v4, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v8, v8, v16

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2584
    move/from16 v26, v16

    .line 2585
    :cond_2
    const/4 v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v16

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    .line 2586
    move/from16 v26, v16

    .line 2581
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2588
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mScrollPageLocker:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v26

    if-lt v0, v4, :cond_0

    mul-int/lit8 v4, v12, 0x3

    add-int v4, v4, p1

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v12, 0x3

    add-int v8, v8, p1

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "add_world_clock_tag"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v27, v12, 0x3

    add-int v27, v27, p1

    aget-object v8, v8, v27

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2596
    const/4 v15, 0x0

    .line 2598
    .local v15, "hasAddView":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v12, 0x3

    aget-object v5, v4, v8

    .line 2599
    .local v5, "leftView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v12, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-object v6, v4, v8

    .line 2600
    .local v6, "middleView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v12, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-object v7, v4, v8

    .line 2602
    .local v7, "rightView":Landroid/widget/LinearLayout;
    const-string v4, "add_world_clock_tag"

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2605
    :cond_5
    const/4 v15, 0x1

    .line 2608
    :cond_6
    if-eqz v15, :cond_8

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2609
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v8, 0x4

    if-eq v4, v8, :cond_7

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_8

    .line 2610
    :cond_7
    const/4 v15, 0x0

    .line 2614
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setTextViewVisiableAndMarkTag(Landroid/view/View;)V

    .line 2615
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setTextViewVisiableAndMarkTag(Landroid/view/View;)V

    .line 2616
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setTextViewVisiableAndMarkTag(Landroid/view/View;)V

    .line 2618
    const/16 v17, 0x0

    .line 2619
    .local v17, "leftAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v18, 0x0

    .line 2620
    .local v18, "middleAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v22, 0x0

    .line 2621
    .local v22, "rightAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v23, 0x0

    .line 2623
    .local v23, "tempAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v24, 0x0

    .line 2625
    .local v24, "tempImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    if-le v4, v12, :cond_12

    const/16 v19, 0x1

    .line 2626
    .local v19, "moveToRight":Z
    :goto_2
    const/16 v25, 0x0

    .line 2627
    .local v25, "topPadding":F
    if-lez v12, :cond_9

    .line 2628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0c02d4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 2632
    :cond_9
    if-nez v15, :cond_a

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    .line 2635
    :cond_a
    const/16 v20, 0x0

    .line 2636
    .local v20, "noNeed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v10

    .line 2637
    .local v10, "cityCode":Ljava/lang/String;
    if-nez p1, :cond_13

    .line 2638
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-eqz v4, :cond_b

    .line 2639
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v11

    .line 2641
    .local v11, "compareCityCode":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2642
    const/16 v20, 0x1

    .line 2663
    .end local v11    # "compareCityCode":Ljava/lang/String;
    :cond_b
    :goto_3
    if-nez v20, :cond_d

    .line 2665
    const/4 v9, 0x0

    .line 2666
    .local v9, "bm":Landroid/graphics/Bitmap;
    if-eqz v19, :cond_15

    .line 2667
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 2668
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 2669
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2670
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 2671
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 2679
    :goto_4
    new-instance v24, Landroid/widget/ImageView;

    .end local v24    # "tempImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2680
    .restart local v24    # "tempImage":Landroid/widget/ImageView;
    const-string v4, "fake_img"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2681
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    move/from16 v0, v27

    invoke-direct {v4, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2682
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2683
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2684
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addView(Landroid/view/View;I)V

    .line 2685
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 2687
    .local v21, "paddingParent":Landroid/view/View;
    const/4 v13, 0x0

    .line 2688
    .local v13, "currentView":Landroid/view/View;
    if-eqz v19, :cond_18

    .line 2690
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "tempAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getX()F

    move-result v4

    const/high16 v8, 0x40a00000

    add-float/2addr v4, v8

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v8, v8, v27

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v25

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v25

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2692
    .restart local v23    # "tempAnimation":Landroid/view/animation/TranslateAnimation;
    if-nez p1, :cond_16

    .line 2693
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->rightTreeView(Landroid/view/View;)V

    .line 2694
    move-object v13, v5

    .line 2695
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2696
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2697
    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2725
    .restart local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_c
    :goto_5
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2726
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2771
    .end local v9    # "bm":Landroid/graphics/Bitmap;
    .end local v10    # "cityCode":Ljava/lang/String;
    .end local v13    # "currentView":Landroid/view/View;
    .end local v20    # "noNeed":Z
    .end local v21    # "paddingParent":Landroid/view/View;
    :cond_d
    :goto_6
    move-object/from16 v14, v24

    .line 2773
    .local v14, "finalImage":Landroid/widget/ImageView;
    new-instance v3, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$12;

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$12;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    .line 2824
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    if-eqz v17, :cond_21

    .line 2825
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2834
    :cond_e
    :goto_7
    if-eqz v17, :cond_f

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2835
    const-wide/16 v27, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2836
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 2837
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2839
    :cond_f
    if-eqz v18, :cond_10

    const-string v4, "add_world_clock_tag"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2840
    const-wide/16 v27, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2841
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 2842
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2844
    :cond_10
    if-eqz v22, :cond_11

    const-string v4, "add_world_clock_tag"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2845
    const-wide/16 v27, 0xc8

    move-object/from16 v0, v22

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2846
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 2847
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2849
    :cond_11
    if-eqz v23, :cond_0

    if-eqz v14, :cond_0

    .line 2850
    const-wide/16 v27, 0xc8

    move-object/from16 v0, v23

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2851
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setDeleteAnimationLock()V

    .line 2852
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 2625
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .end local v14    # "finalImage":Landroid/widget/ImageView;
    .end local v19    # "moveToRight":Z
    .end local v25    # "topPadding":F
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2645
    .restart local v10    # "cityCode":Ljava/lang/String;
    .restart local v19    # "moveToRight":Z
    .restart local v20    # "noNeed":Z
    .restart local v25    # "topPadding":F
    :cond_13
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 2646
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-eqz v4, :cond_b

    .line 2647
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v11

    .line 2649
    .restart local v11    # "compareCityCode":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2650
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 2653
    .end local v11    # "compareCityCode":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 2654
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    if-eqz v4, :cond_b

    .line 2655
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    invoke-virtual {v4}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityCode()Ljava/lang/String;

    move-result-object v11

    .line 2657
    .restart local v11    # "compareCityCode":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2658
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 2673
    .end local v11    # "compareCityCode":Ljava/lang/String;
    .restart local v9    # "bm":Landroid/graphics/Bitmap;
    :cond_15
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 2674
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 2675
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2676
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 2677
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_4

    .line 2698
    .restart local v13    # "currentView":Landroid/view/View;
    .restart local v21    # "paddingParent":Landroid/view/View;
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    .line 2699
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->rightTreeView(Landroid/view/View;)V

    .line 2700
    move-object v13, v6

    .line 2701
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2702
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_5

    .line 2703
    :cond_17
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 2704
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->rightTreeView(Landroid/view/View;)V

    .line 2705
    move-object v13, v7

    goto/16 :goto_5

    .line 2708
    :cond_18
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "tempAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getX()F

    move-result v4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v25

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v25

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2710
    .restart local v23    # "tempAnimation":Landroid/view/animation/TranslateAnimation;
    if-nez p1, :cond_19

    .line 2711
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->leftTreeView(Landroid/view/View;)V

    .line 2712
    move-object v13, v5

    goto/16 :goto_5

    .line 2713
    :cond_19
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1a

    .line 2714
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->leftTreeView(Landroid/view/View;)V

    .line 2715
    move-object v13, v6

    .line 2716
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_5

    .line 2717
    :cond_1a
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 2718
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->leftTreeView(Landroid/view/View;)V

    .line 2719
    move-object v13, v7

    .line 2720
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2721
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2722
    .restart local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_5

    .line 2729
    .end local v9    # "bm":Landroid/graphics/Bitmap;
    .end local v10    # "cityCode":Ljava/lang/String;
    .end local v13    # "currentView":Landroid/view/View;
    .end local v20    # "noNeed":Z
    .end local v21    # "paddingParent":Landroid/view/View;
    :cond_1b
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_1d

    .line 2730
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    .line 2731
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2732
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2733
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2734
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2735
    :cond_1c
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 2736
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2737
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2738
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2739
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2740
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    .end local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2741
    .restart local v17    # "leftAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2743
    :cond_1d
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_1f

    .line 2744
    if-nez p1, :cond_1e

    .line 2745
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2746
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2747
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2748
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2749
    :cond_1e
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 2750
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2751
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2752
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2753
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2755
    :cond_1f
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_d

    .line 2756
    if-nez p1, :cond_20

    .line 2757
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2758
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2759
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2760
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2761
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2762
    .restart local v18    # "middleAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2763
    :cond_20
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 2764
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->exchangeViewContent(Landroid/view/View;Landroid/view/View;)V

    .line 2765
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 2766
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2767
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v22    # "rightAnimation":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_6

    .line 2826
    .restart local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    .restart local v14    # "finalImage":Landroid/widget/ImageView;
    :cond_21
    if-eqz v18, :cond_22

    .line 2827
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_7

    .line 2828
    :cond_22
    if-eqz v22, :cond_23

    .line 2829
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_7

    .line 2830
    :cond_23
    if-eqz v23, :cond_e

    .line 2831
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->handleOnClick(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "add_world_clock_tag"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v5

    .line 781
    :cond_1
    sget-boolean v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->sLongClickLocker:Z

    if-nez v1, :cond_0

    .line 782
    sput-boolean v5, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->sLongClickLocker:Z

    .line 783
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->releaseFakeAnimationImage()V

    .line 784
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->markDataOnLongClick()V

    .line 785
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/alarmclock/worldclock/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 786
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setTextVisiable(Landroid/view/View;I)V

    .line 787
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDragController:Lcom/meizu/flyme/alarmclock/worldclock/DragController;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/meizu/flyme/alarmclock/worldclock/DragController;->startDrag(Landroid/view/View;Lcom/meizu/flyme/alarmclock/worldclock/DragSource;Ljava/lang/Object;I)V

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 789
    .local v0, "taskDescription":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    iput-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentTaskDescription:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 790
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentView:Landroid/view/View;

    .line 791
    iput-boolean v5, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    .line 792
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mCurrentPageIndex:I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->reloadButtons()V

    .line 318
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->setCurrentPage(I)V

    .line 319
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mPageIndicator:Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/PageIndicator;->setCurrentPage(I)V

    .line 320
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->snapToPage(I)V

    .line 323
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setWorldClockViewVisibility()V

    .line 324
    return-void
.end method

.method public refreshWorldClockView()V
    .locals 0

    .prologue
    .line 3178
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setAllClockVisable()V

    .line 3179
    invoke-direct {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->releaseFakeAnimationImage()V

    .line 3180
    return-void
.end method

.method public releaseDrawingCache()V
    .locals 4

    .prologue
    .line 856
    iget-object v0, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$6;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$6;-><init>(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 869
    return-void
.end method

.method public removeFakeImage()V
    .locals 6

    .prologue
    .line 3151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3152
    .local v2, "removeViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3153
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3154
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    const-string v4, "fake_img"

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3155
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3158
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 3159
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3160
    .restart local v3    # "view":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3161
    invoke-virtual {p0, v3}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 3164
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setAddNewWorldClockIcon()V
    .locals 28

    .prologue
    .line 2213
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setNewClockDataFromDB()V

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2217
    .local v8, "dbCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildCount()I

    move-result v7

    .line 2219
    .local v7, "count":I
    const/4 v13, -0x1

    .line 2221
    .local v13, "insertIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->resetAllPadding()V

    .line 2222
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->resetAllLongClickListener()V

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v23, v0

    add-int/lit8 v24, v7, -0x1

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 2225
    .local v22, "viewGroup":Landroid/view/ViewGroup;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v15, v0, :cond_0

    .line 2226
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 2227
    .local v16, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 2229
    .local v19, "taskDescription":Ljava/lang/Object;
    add-int/lit8 v23, v7, -0x1

    mul-int/lit8 v23, v23, 0x3

    add-int v20, v23, v15

    .line 2230
    .local v20, "totalIndex":I
    const-string v23, "add_world_clock_tag"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v0, v20

    if-ge v0, v8, :cond_5

    .line 2231
    move v13, v15

    .line 2246
    .end local v16    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v19    # "taskDescription":Ljava/lang/Object;
    .end local v20    # "totalIndex":I
    :cond_0
    add-int/lit8 v23, v7, -0x1

    mul-int/lit8 v23, v23, 0x3

    add-int v20, v23, v13

    .line 2249
    .restart local v20    # "totalIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorldClockItems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;

    .line 2251
    .local v6, "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v17, v23, v20

    .line 2252
    .local v17, "lr":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v21, v23, v20

    .line 2253
    .local v21, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v11, v23, v20

    .line 2254
    .local v11, "ig":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v9, v23, v20

    .line 2256
    .local v9, "dtv":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->isNowDayTime(Ljava/lang/String;)Z

    move-result v14

    .line 2258
    .local v14, "isDayTime":Z
    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getCityName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/utils/AlarmUtility;->formatOtherWorldTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-gtz v23, :cond_1

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 2264
    .local v12, "inflater":Landroid/view/LayoutInflater;
    if-eqz v14, :cond_7

    const v23, 0x7f030023

    :goto_1
    move/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2266
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    aput-object v23, v24, v20

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    invoke-virtual {v6}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setCurrentTimezone(Ljava/lang/String;)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setDayTime(Z)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v24, v0

    aget-object v24, v24, v20

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->setTextView(Landroid/widget/TextView;)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->invalidate()V

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mHandleViews:[Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/flyme/alarmclock/worldclock/MzHandleView;->restartRunnable()V

    .line 2274
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2276
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2277
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2278
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 2280
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_2

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c02ca

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2282
    .local v18, "paddingPX":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2285
    .end local v18    # "paddingPX":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v20

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2290
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v13, v0, :cond_c

    .line 2292
    mul-int/lit8 v5, v7, 0x3

    .line 2295
    .local v5, "addTotalIndex":I
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v5, v0, :cond_8

    const/16 v23, 0x6

    move/from16 v0, v23

    if-ge v5, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild1Add:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace1()V

    .line 2304
    :cond_3
    :goto_2
    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->removeWorkspace(I)V

    .line 2306
    const/4 v10, 0x0

    .line 2307
    .local v10, "finishFirst":Z
    :goto_3
    const/16 v23, 0xc

    move/from16 v0, v23

    if-ge v5, v0, :cond_b

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    if-eqz v23, :cond_4

    .line 2309
    if-nez v10, :cond_a

    .line 2310
    const/4 v10, 0x1

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const-string v24, "add_world_clock_tag"

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0e0159

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2307
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2234
    .end local v5    # "addTotalIndex":I
    .end local v6    # "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .end local v9    # "dtv":Landroid/widget/TextView;
    .end local v10    # "finishFirst":Z
    .end local v11    # "ig":Landroid/view/ViewGroup;
    .end local v14    # "isDayTime":Z
    .end local v17    # "lr":Landroid/widget/LinearLayout;
    .end local v21    # "tv":Landroid/widget/TextView;
    .restart local v16    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v19    # "taskDescription":Ljava/lang/Object;
    :cond_5
    const-string v23, "add_world_clock_tag"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v17, v23, v20

    .line 2236
    .restart local v17    # "lr":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v21, v23, v20

    .line 2237
    .restart local v21    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v9, v23, v20

    .line 2239
    .restart local v9    # "dtv":Landroid/widget/TextView;
    const/16 v23, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2240
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2241
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2225
    .end local v9    # "dtv":Landroid/widget/TextView;
    .end local v17    # "lr":Landroid/widget/LinearLayout;
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2264
    .end local v16    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v19    # "taskDescription":Ljava/lang/Object;
    .restart local v6    # "clockItem":Lcom/meizu/flyme/alarmclock/worldclock/WorldClockItem;
    .restart local v9    # "dtv":Landroid/widget/TextView;
    .restart local v11    # "ig":Landroid/view/ViewGroup;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "isDayTime":Z
    .restart local v17    # "lr":Landroid/widget/LinearLayout;
    .restart local v21    # "tv":Landroid/widget/TextView;
    :cond_7
    const v23, 0x7f030024

    goto/16 :goto_1

    .line 2297
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "addTotalIndex":I
    :cond_8
    const/16 v23, 0x6

    move/from16 v0, v23

    if-lt v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild2Add:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 2298
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace2()V

    goto/16 :goto_2

    .line 2299
    :cond_9
    const/16 v23, 0x9

    move/from16 v0, v23

    if-lt v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->isChild3Add:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 2300
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->addWorkspace3()V

    goto/16 :goto_2

    .line 2320
    .restart local v10    # "finishFirst":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 2327
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mWorkspace:Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mBuildLayersRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/meizu/flyme/alarmclock/worldclock/WorkspaceItem;->post(Ljava/lang/Runnable;)Z

    .line 2353
    .end local v10    # "finishFirst":Z
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->setWorldClockViewVisibility()V

    .line 2354
    return-void

    .line 2329
    .end local v5    # "addTotalIndex":I
    :cond_c
    add-int/lit8 v5, v20, 0x1

    .line 2331
    .restart local v5    # "addTotalIndex":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_d

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c02ca

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2333
    .restart local v18    # "paddingPX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v18

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2343
    .end local v18    # "paddingPX":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const-string v24, "add_world_clock_tag"

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0e0159

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mDateTexts:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mImageViews:[Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 2341
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_6
.end method

.method public setAddWorldTimeOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    .line 140
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAddLayouts:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockAddIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mSingleWorldClockAddIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mAlarmFragmentOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_2
    return-void
.end method

.method public setAllViewVisible()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 3059
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 3060
    const-string v3, "add_world_clock_tag"

    iget-object v4, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3076
    :cond_0
    return-void

    .line 3063
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3065
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v4, 0x7f0b00d9

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3066
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v1

    const v4, 0x7f0b0133

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3068
    .local v0, "dateText":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3069
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3071
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3072
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3058
    .end local v0    # "dateText":Landroid/widget/TextView;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnChangeStatusBarThemeListener(Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;

    .prologue
    .line 3189
    iput-object p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mChangeStatusBarThemeListener:Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView$OnChangeStatusBarThemeListener;

    .line 3190
    return-void
.end method

.method public setTextVisiable(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .prologue
    .line 798
    const v2, 0x7f0b00d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 799
    .local v0, "textView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :cond_0
    const v2, 0x7f0b0133

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 803
    .local v1, "textViewDate":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_1
    return-void
.end method

.method public setVisibleDefault()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public setmIsDraging(Z)V
    .locals 0
    .param p1, "mIsDraging"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/meizu/flyme/alarmclock/worldclock/WorldClockView;->mIsDraging:Z

    .line 136
    return-void
.end method

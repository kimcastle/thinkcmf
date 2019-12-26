<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2019 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Powerless < wzxaini9@gmail.com>
// +----------------------------------------------------------------------
namespace app\user\controller;

use app\user\model\CommentModel;
use cmf\controller\UserBaseController;
use app\user\model\UserModel;


class CommentController extends UserBaseController
{
    /**
     * 個人中心我的評論列表
     */
    public function index()
    {
        $user = cmf_get_current_user();

        $commentModel = new CommentModel();
        $comments     = $commentModel->where(['user_id' => cmf_get_current_user_id(), 'delete_time' => 0])
            ->order('create_time DESC')->paginate();
        $this->assign($user);
        $this->assign("page", $comments->render());
        $this->assign("comments", $comments);
        return $this->fetch();
    }

    /**
     * 用戶刪除評論
     */
    public function delete()
    {
        $id   = $this->request->param("id", 0, "intval");
        $delete = new UserModel();
        $data = $delete->deleteComment($id);
        if ($data) {
            $this->success("刪除成功！");
        } else {
            $this->error("刪除失敗！");
        }
    }
}